package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import modelo.Usuario;

public class UsuarioDAO {
	Connection cnx = null;
	
	public Usuario logarUsuario(String email, String senha) {
		Usuario usuario = null; 
		ResultSet rs = null;
		
		cnx = DAO.createConnection();
		String sql = "SELECT * FROM tb_usuario WHERE email = ? AND senha = ?";
		
		try {
			PreparedStatement ps = cnx.prepareStatement(sql);
			
			ps.setString(1, email);
			ps.setString(2, senha);
			
			rs = ps.executeQuery();
			while(rs.next()) {
				usuario = new Usuario();
				
				usuario.setId(rs.getInt("id"));
				usuario.setNomeCompleto(rs.getString("nomeCompleto"));
				usuario.setEmail(rs.getString("email"));
				usuario.setSenha(rs.getString("senha"));
				usuario.setDataNasc(rs.getString("dataNasc"));
				
			}
			
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return usuario;
	}
}
