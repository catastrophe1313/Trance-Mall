package anxing;

import java.io.IOException;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/infoedit")
public class infoedit extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public infoedit() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				request.setCharacterEncoding("utf-8");
				response.setCharacterEncoding("utf-8");
				String realname = request.getParameter("realname");
				String idtype = request.getParameter("idtype");
				String idnum = request.getParameter("idnum");
				String sex = request.getParameter("sex");
				String city = request.getParameter("city");
				String username = request.getParameter("username");
				Service.update(realname, idtype,idnum,city,sex,username);
				//转锟斤拷
				request.getRequestDispatcher("info.jsp").forward(request, response);				
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
