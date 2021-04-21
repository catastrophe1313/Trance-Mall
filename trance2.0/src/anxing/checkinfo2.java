package anxing;

import java.io.IOException;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class checkinfo
 */
@WebServlet("/checkinfo2")
public class checkinfo2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public checkinfo2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//请求和响应的编码
				request.setCharacterEncoding("utf-8");
				response.setCharacterEncoding("utf-8");
				HttpSession session = request.getSession();
				String rel = request.getParameter("rel");
				String bename = request.getParameter("bename");
				String py = request.getParameter("py");
				String idtype = request.getParameter("idtype");
				String idcard = request.getParameter("idcard");
				String tel = request.getParameter("tel");
				String status = "未付款";
				String insname = (String)session.getAttribute("insname");
				String ordername = bename+"的"+insname;
				SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				String date=df.format(new Date());
//				int uid = (int) session.getAttribute("uid");
				int uid = 1;
				double price = (double) session.getAttribute("price");
				try {
					Service.insertInsured(uid,bename,py,idcard,idtype,tel,rel);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				int iid=Service.queryLatestIID();
				try {
					Service.insertOrderin(ordername,iid,uid,price,date,status);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				//转发
				request.getRequestDispatcher("/index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
