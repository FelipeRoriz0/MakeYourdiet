package controle;

import jakarta.servlet.http.HttpServlet;
import modelo.Usuario;
import servico.UsuarioServico;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CadastroServlet
 */
public class CadastroServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CadastroServlet() {
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
	protected void doPost(HttpServletRequest request, jakarta.servlet.http.HttpServletResponse response) throws ServletException, IOException {
		Usuario u = new Usuario();
		UsuarioServico servico = new UsuarioServico();
		
		u.setNomeCompleto(request.getParameter("nomeCompleto"));
		u.setEmail(request.getParameter("email"));
		u.setSenha(request.getParameter("senha"));
		u.setSenha(request.getParameter("cel"));
		u.setDataNasc(request.getParameter("dataNasc"));
		/*-----duvida-----*/
		if(servico.cadastrar(u)) {
			response.sendRedirect("cadastro.html");
		}else {
			
		}
	}

}
