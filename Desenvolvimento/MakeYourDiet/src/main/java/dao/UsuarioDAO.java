package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import modelo.Usuario;

public class UsuarioDAO {
	Connection cnx = null;
	/*LOGIN-----------------------------------------------------------------------------*/
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
				usuario.setCel(rs.getString("cel"));
				usuario.setDataNasc(rs.getDate("dataNasc"));
				
			}
			
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return usuario;
	}
	/*CADASTRO-------------------------------------------------------------------------------*/

	public java.sql.Date convertJavaDateToSqlDate(java.util.Date date) {
	    return new java.sql.Date(date.getTime());
	}
	
public Boolean cadastrarUsuario(Usuario usuario) {
	boolean resultado = true;
	int retornoQuery;
	
	
	cnx = DAO.createConnection();
	
	String sql = "INSERT INTO tb_usuario(nomeCompleto, email, senha, dataNasc) VALUES (?,?,?,?)";
	
	
	try {
		PreparedStatement ps = cnx.prepareStatement(sql);
		ps.setString(1, usuario.getNomeCompleto());
		ps.setString(2, usuario.getEmail());
		ps.setString(3, usuario.getSenha());
		ps.setDate(4, convertJavaDateToSqlDate(usuario.getDataNasc()));
		
		retornoQuery = ps.executeUpdate();
		
		if(retornoQuery <= 0) {
			resultado = false;
		}
	}catch(SQLException e) {
		e.printStackTrace();
	}
	return resultado;
  }
}

