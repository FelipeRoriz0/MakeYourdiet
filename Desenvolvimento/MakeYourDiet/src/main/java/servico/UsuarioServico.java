package servico;

import dao.UsuarioDAO;
import modelo.Usuario;

public class UsuarioServico {
	UsuarioDAO usuario = new UsuarioDAO();
	
	public boolean cadastrar(Usuario u) {
		return usuario.cadastrarUsuario(u);
	}
	
}
