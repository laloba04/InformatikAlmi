
public class Equipos {
	//CONECTAR CLASE
	CompraEquipos compraEquipos;
	//DATOS
	private String placa;

	public Equipos() {
		placa="";

	}
	public Equipos(String placa) {
		this.placa=placa;
	}
	public String getPlaca() {
		return placa;
	}
	public void setPlaca(String placa) {
		this.placa = placa;
	}		
}
