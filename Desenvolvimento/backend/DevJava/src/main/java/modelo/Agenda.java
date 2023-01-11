package modelo;

public class Agenda {
	private int id;
	private DiasDaSemana diasDaSemana;
	private Usuario user;
	private Receitas receitas;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public DiasDaSemana getDiasDaSemana() {
		return diasDaSemana;
	}
	public void setDiasDaSemana(DiasDaSemana diasDaSemana) {
		this.diasDaSemana = diasDaSemana;
	}
	public Usuario getUser() {
		return user;
	}
	public void setUser(Usuario user) {
		this.user = user;
	}
	public Receitas getReceitas() {
		return receitas;
	}
	public void setReceitas(Receitas receitas) {
		this.receitas = receitas;
	}
	
	
}
