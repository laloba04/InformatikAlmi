import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;

import javax.swing.JComboBox;

public class EventosEquipos {
	private CompraEquipos compraEquipos;
	private CompraComponente compraComponente;
	private Cliente cliente;
	

	public EventosEquipos(CompraEquipos compraEquipos) {
		this.compraEquipos = compraEquipos;
		registrarEventos();
	}

	public void registrarEventos() {
		compraEquipos.getMenuDesplegable2().addActionListener( new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub
				if (e.getSource() ==compraEquipos.getMenuDesplegable2()) {
					String selectedItem = (String) compraEquipos.getMenuDesplegable2().getSelectedItem();
					
					
					if (selectedItem.equals("Componentes")) {
						compraComponente = new CompraComponente();
						compraComponente.setVisible(true);
						compraEquipos.setVisible(false);
					

					}else if (selectedItem.equals("Cliente")) {
						cliente = new Cliente();
						cliente.setVisible(true);
						compraEquipos.setVisible(false);
						
		}
					
				}

			}
		});
	}
}
	
