import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

//CREAR CONEXION
public class BaseDeDatos {
	Connection cn;
	public BaseDeDatos() {
		String cadenaConex="jdbc:oracle:thin:@23.20.255.182:ORCLCDB";
		try {
			cn=DriverManager.getConnection(cadenaConex,"ormReto3","Almi123");
			System.out.println("Connected");
		}catch(SQLException e) {
			e.printStackTrace();
			System.out.println("Not connected");
		}
	}
	
	//CERRAR CONEXION
	public void cerrarConex() {
		try {
			cn.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
}

