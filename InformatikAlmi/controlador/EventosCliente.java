import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class EventosCliente {
	private CompraEquipos compraEquipos;
	private CompraComponente compraComponente;
	private Cliente cliente;


	public EventosCliente(Cliente cliente) {
		this.cliente = cliente;
		registrarEventos();
	}

	public void registrarEventos() {
		cliente.getMenuDesplegable4().addActionListener( new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub
				if (e.getSource() ==cliente.getMenuDesplegable4()) {
					String selectedItem = (String) cliente.getMenuDesplegable4().getSelectedItem();


					if (selectedItem.equals("Componentes")) {
						compraComponente = new CompraComponente();
						compraComponente.setVisible(true);
						cliente.setVisible(false);


					}else if (selectedItem.equals("Equipos")) {
						compraEquipos = new CompraEquipos();
						compraEquipos.setVisible(true);
						cliente.setVisible(false);

					}

				}

			}
		});
	}
}
