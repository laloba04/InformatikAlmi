
public class Empleados {
	//conectar clases
	 LoginEmpleados loginEmpleados;
	//DATOS
	private String usuario, contraseña;
	
	public Empleados(){
		usuario="";
		contraseña="";
		
	}
	public Empleados(String usuario, String contraseña) {
		this.usuario=usuario;
		this.contraseña=contraseña;
	}
	public String getUsuario() {
		return usuario;
	}
	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}
	public String getContraseña() {
		return contraseña;
	}
	public void setContraseña(String contraseña) {
		this.contraseña = contraseña;
	}
	
}




