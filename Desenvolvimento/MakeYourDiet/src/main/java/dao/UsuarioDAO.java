package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

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
				usuario.setDataNasc(rs.getString("dataNasc")); //string vs date
				
			}
			
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return usuario;
	}
	/*CADASTRO-------------------------------------------------------------------------------*/
public boolean cadastrarUsuario(Usuario usuario) {
	boolean resultado = true;
	int retornoQuery;
	
	cnx = DAO.createConnection();
	
	String sql = "INSERT INTO tb_usuario(nomeCompleto, email, senha, dataNasc) VALUES (?,?,?,?)";
	
	try {
		PreparedStatement ps = cnx.prepareStatement(sql);
		int parameterIndex; /*Entender por que pediu pra criar uma variavel*/
		ps.setString(parameterIndex:1, usuario.getNomeCompleto());
		ps.setString(parameterIndex:2, usuario.getEmail());
		ps.setString(parameterIndex:3, usuario.getSenha());
		ps.setString(parameterIndex:4, usuario.getDataNasc());
		
		retornoQuery = ps.executeUpdate();
		
		if(retornoQuery <= 0) {
			resultado = false;
		}
	}catch(SQLException e) {
		e.printStackTrace();
	}
  }
}

