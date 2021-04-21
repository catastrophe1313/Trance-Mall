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

import entity.Order_detail;

/**
 * Servlet implementation class checkinfo
 */
@WebServlet("/checkinfo")
public class checkinfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public checkinfo() {
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
				String country = request.getParameter("country");
				String city = request.getParameter("city");
				String type = request.getParameter("type");
				String from = request.getParameter("from");
				String to = request.getParameter("to");
				String num1 = request.getParameter("num1");
				String num2 = request.getParameter("num2");
				String num3 = request.getParameter("num3");
				String project = request.getParameter("project");
				double pri = Double.parseDouble(request.getParameter("pri"));
				String username = (String) session.getAttribute("username");
				if(num1.equals("")) {
					num1="0";
				}
				if(num2.equals("")) {
					num1="0";
				}
				if(num3.equals("")) {
					num1="0";
				}
				Date a1;
				Date b1;
				long day = 0;
				try {
					a1 = new SimpleDateFormat("yyyy-MM-dd").parse(to);
					b1 = new SimpleDateFormat("yyyy-MM-dd").parse(from);
					day= (a1.getTime()-b1.getTime())/(24*60*60*1000);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				double price =(Integer.parseInt(num1)+Integer.parseInt(num2)*1.5+Integer.parseInt(num3)*2)*pri*day;
				
				session.setAttribute("price",price);
				request.setAttribute("country", country);
				request.setAttribute("city", city);
				request.setAttribute("type", type);
				request.setAttribute("from", from);
				request.setAttribute("to", to);
				request.setAttribute("day", day);
				request.setAttribute("project", project);
				request.setAttribute("price", price);
				try {
					Service.insertOrderde(country,city,type,from,to);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				request.setAttribute("users",Service.queryUsers(username));
				int oid=Service.queryLatestOID();
				System.out.print(oid);
				session.setAttribute("oid",oid);
				//转发
				request.getRequestDispatcher("check.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
