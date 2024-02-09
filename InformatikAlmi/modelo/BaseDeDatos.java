import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BaseDeDatos {
	Connection cn;

	public BaseDeDatos() {
		String cadenaConex = "jdbc:oracle:thin:@23.20.255.182:1521/ORCLCDB"; 
		try {
			cn = DriverManager.getConnection(cadenaConex, "ormReto3", "Almi123");
			
		} catch (SQLException e) {
			e.printStackTrace();
			
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

	public boolean autenticarUsuario(String usuario, String password) {
		String sql = "SELECT * FROM EMPLEADO WHERE usuario = ? AND password = ?";
		try (PreparedStatement statement = cn.prepareStatement(sql)) {
			statement.setString(1, usuario);
			statement.setString(2, password);
			ResultSet resultSet = statement.executeQuery();
			return resultSet.next(); // Devuelve true si hay resultados
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}
}

