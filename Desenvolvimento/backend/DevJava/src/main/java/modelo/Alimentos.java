package modelo;

public class Alimentos extends TipoAlimento {
	private int id;
	private String nomeAlimentos;
	private TipoAlimento tipoAlimento;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNomeAlimentos() {
		return nomeAlimentos;
	}
	public void setNomeAlimentos(String nomeAlimentos) {
		this.nomeAlimentos = nomeAlimentos;
	}
	public TipoAlimento getTipoAlimento() {
		return tipoAlimento;
	}
	public void setTipoAlimento(TipoAlimento tipoAlimento) {
		this.tipoAlimento = tipoAlimento;
	}
	
	
}
