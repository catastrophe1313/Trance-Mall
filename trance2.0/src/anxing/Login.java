package anxing;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.TUser;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Login() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
        request.setCharacterEncoding("utf-8");
        
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String jym = request.getParameter("jym");
		
		HttpSession session = request.getSession();
		String s_verf = (String)session.getAttribute("verf");
		if(s_verf!=null&&s_verf.equals(jym)) {
				try {
					TUser u = Service.login(username, password);
					if(u!=null) {
						session.setAttribute("user", u);
						session.removeAttribute("verf");
						session.setAttribute("username", username);
						request.getRequestDispatcher("index.jsp").forward(request, response);
					}
					else {
						request.setAttribute("input_name", username);
						request.setAttribute("info", "Wrong username or password!");
						request.getRequestDispatcher("login.jsp").forward(request, response);
					}
				} catch (ServletException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
		else {
			request.setAttribute("input_name", username);
			request.setAttribute("info", "Worng checkcode!");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
    	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
