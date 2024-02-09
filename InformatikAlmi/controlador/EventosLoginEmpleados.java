import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class EventosLoginEmpleados {

	private LoginEmpleados loginEmpleados;
	private CompraEquipos compraEquipos;
	private CompraComponente compraComponente;
	private Cliente cliente;
	private BaseDeDatos baseDeDatos;


	public EventosLoginEmpleados(LoginEmpleados loginEmpleados) {
		this.loginEmpleados = loginEmpleados;
		registrarEventos();
	}
	private void registrarEventos() {
		loginEmpleados.getBtnCargar().addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub
				compraEquipos=new CompraEquipos();
				compraEquipos.setVisible(true);
				loginEmpleados.setVisible(false);
				
			}
		});
	}
}




