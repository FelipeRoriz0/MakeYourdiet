package modelo;

public class Usuario {
	private int id;
	private String nomeCompleto;
	private String email;
	private String senha;
	private Date dataNasc;/*lembrar de aprender como transferir de string pra date 
	quando salvar no banco de dados*/
	
	
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
	
	@Override
	public String toString() {
		return "Usuario [id=" + id + ", nomeCompleto=" + nomeCompleto + ", email=" + email + ", senha=" + senha
				+ ", dataNasc=" + dataNasc + "]";
	}
	
	
	
}
