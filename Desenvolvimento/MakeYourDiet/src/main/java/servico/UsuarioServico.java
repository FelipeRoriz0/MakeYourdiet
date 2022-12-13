package servico;

import dao.UsuarioDAO;
import modelo.Usuario;

public class UsuarioServico {
	UsuarioDAO usuario = new UsuarioDAO();
	
	public  Usuario logar(String email, String senha){
		return usuario.logarUsuario(email,senha);
	}
	
	public Usuario cadastrar(Usuario u) {
		return usuario.cadastrarUsuario(u);
	}
	
}
