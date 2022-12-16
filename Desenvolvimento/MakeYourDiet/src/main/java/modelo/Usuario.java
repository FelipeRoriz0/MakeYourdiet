package modelo;

import java.sql.Date;

public class Usuario {
	private int id;
	private String nomeCompleto;
	private Date dataNasc;
	private String cel;
	private String email;
	private String senha;
	private int peso;
	private int altura;
	
	
	
	public int getPeso() {
		return peso;
	}
	public void setPeso(int peso) {
		this.peso = peso;
	}
	public int getAltura() {
		return altura;
	}
	public void setAltura(int altura) {
		this.altura = altura;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNomeCompleto() {
		return nomeCompleto;
	}
	public void setNomeCompleto(String nomeCompleto) {
		this.nomeCompleto = nomeCompleto;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public Date getDataNasc() {
		return dataNasc;
	}
	public void setDataNasc(Date dataNasc) {
		this.dataNasc = dataNasc;
	}
	public String getCel() {
		return cel;
	}
	public void setCel(String cel) {
		this.cel = cel;
	}
	
	
	@Override
	public String toString() {
		return "Usuario [id=" + id + ", nomeCompleto=" + nomeCompleto + ", email=" + email + ", senha=" + senha
				+ ", dataNasc=" + dataNasc + ", peso=" + peso + ", altura=" + altura + ", getPeso()=" + getPeso()
				+ ", getAltura()=" + getAltura() + ", getId()=" + getId() + ", getNomeCompleto()=" + getNomeCompleto()
				+ ", getEmail()=" + getEmail() + ", getSenha()=" + getSenha() + ", getDataNasc()=" + getDataNasc()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}

	
	
	
	
	
}
