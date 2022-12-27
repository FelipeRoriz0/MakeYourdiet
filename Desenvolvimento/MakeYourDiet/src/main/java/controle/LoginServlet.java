package controle;

import java.io.IOException;
import java.util.Objects;

import dao.UsuarioDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import modelo.Usuario;

/**
 * Servlet implementation class Login
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(jakarta.servlet.http.HttpServletRequest request, jakarta.servlet.http.HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("usuario");
		String senha = request.getParameter("senha");
		Usuario u = null;
		
		HttpSession session = request.getSession();
		
		UsuarioDAO dao = new UsuarioDAO();
		
		u = dao.logarUsuario(email, senha);
		
		if(!Objects.isNull(u)) {
			session.setAttribute("usuarioSession", u.getNomeCompleto());
			response.sendRedirect("sucesso.html");
		}else {
			response.sendRedirect("erro.html");
		}
		}
		
		

}
