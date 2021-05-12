package anxing;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Servlet01")
public class Servlet01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Servlet01() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
    	doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html; charset=utf-8");
        response.setCharacterEncoding("utf-8");
        request.setCharacterEncoding("utf-8");

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String jym = request.getParameter("jym");
        
        HttpSession session = request.getSession();
		String s_verf = (String)session.getAttribute("verf");
//        ServletConfig config = getServletConfig();
//        String trueUn = getServletConfig().getInitParameter("trueUn");
//        String truePwd = getServletConfig().getInitParameter("truePwd");

        System.out.println(username+":"+password);

        PrintWriter pw = response.getWriter();
        
        	if(username.equals("ccf")==true && "159753".equals(password)==true){
                pw.write("login success");

                request.getRequestDispatcher("index.jsp").forward(request, response);;
                response.sendRedirect("index.jsp");
                
            }else{
                pw.write("<p>用户名密码错误，请重新<a href='login.html'>登录</a></p>");

                request.getRequestDispatcher("loginAction.jsp").forward(request, response);;
                response.sendRedirect("loginAction.jsp");
            }
        
	}
}
