package controle;

import java.io.IOException;
import java.util.Objects;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UsuarioDAO;
import modelo.Usuario;

/**
 * Servlet implementation class LoginServlet
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
	protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("usuario");
		String senha = request.getParameter("senha");
		Usuario u = null;
		
		HttpSession session = request.getSession();
		
		UsuarioDAO dao = new UsuarioDAO();
		
		u = dao.logarUsuario(email, senha);
		
		System.out.println(u.getNomeCompleto());/*testar a busca do nome*/
		
		if(!Objects.isNull(u)) {
			session.setAttribute("usuarioSession", u);
			response.sendRedirect("sucesso.html");
			
		}else {
			response.sendRedirect("erro.html");
		}
		}

}
