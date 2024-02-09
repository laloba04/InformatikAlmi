import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JComboBox;

public class EventosComponentes {

	private CompraComponente compraComponente;
	private JComboBox<String> menuDesplegable;
	
	private CompraEquipos compraEquipos;
	private Cliente cliente;
	public EventosComponentes(CompraComponente compraComponente) {
		this.compraComponente = compraComponente;
		registrarEventos();
	}


	private void registrarEventos() {
		compraComponente.getMenuDesplegable().addActionListener( new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub
				if (e.getSource() ==compraComponente.getMenuDesplegable()) {
					String selectedItem = (String) compraComponente.getMenuDesplegable().getSelectedItem();

					if (selectedItem.equals("Equipos")) {
						compraEquipos=new CompraEquipos();
						compraEquipos.setVisible(true);
						compraComponente.setVisible(false);

					}else if (selectedItem.equals("Cliente")) {
						cliente = new Cliente();
						cliente.setVisible(true);
						compraComponente.setVisible(false);
						
					
					}
					
				}

			}
		});
	}
}

