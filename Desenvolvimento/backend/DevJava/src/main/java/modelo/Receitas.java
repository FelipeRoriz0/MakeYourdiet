package modelo;

public class Receitas{
	private int id;
	private TipoReceita tipoReceita;
	private String receita;
	private String preparo;
	

	
	public String getReceita() {
		return receita;
	}
	public void setReceita(String receita) {
		this.receita = receita;
	}
	public String getPreparo() {
		return preparo;
	}
	public void setPreparo(String preparo) {
		this.preparo = preparo;
	}
	public TipoReceita getTipoReceita() {
		return tipoReceita;
	}
	public void setTipoReceita(TipoReceita tipoReceita) {
		this.tipoReceita = tipoReceita;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	

}
