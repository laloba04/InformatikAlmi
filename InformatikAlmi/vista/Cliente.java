import java.awt.EventQueue;
import java.awt.Font;
import java.awt.event.ActionEvent;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.border.LineBorder;

import java.awt.BorderLayout;
import java.awt.Color;

import javax.swing.JList;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.SwingConstants;


public class Cliente extends JFrame {
	private CompraEquipos compraEquipos;
	private CompraComponente compraComponente;
	private EventosCliente eventosCliente;
	

	private static final long serialVersionUID = 1L;
	private JPanel contentPane;
	private JComboBox menuDesplegable4;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					Cliente frame = new Cliente();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public Cliente() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 769, 606);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));

		setContentPane(contentPane);
		contentPane.setLayout(new BorderLayout(0, 0));
		
		JPanel panel = new JPanel();
		contentPane.add(panel, BorderLayout.NORTH);
		
		JPanel cliente = new JPanel();
		contentPane.add(cliente, BorderLayout.CENTER);
		cliente.setLayout(null);
		
		JList lstCompras = new JList();
		lstCompras.setBounds(347, 55, 280, 405);
		cliente.add(lstCompras);
		lstCompras.setBorder(new LineBorder(Color.BLACK));
		
		menuDesplegable4 = new JComboBox();
		menuDesplegable4.setBounds(0, 0, 116, 29);
		menuDesplegable4.setFont(new Font("Arial", Font.PLAIN, 12));
		menuDesplegable4.addItem("Cliente");
		menuDesplegable4.addItem("Equipos");
		menuDesplegable4.addItem("Componentes");
		menuDesplegable4.setBounds(0, 0, 128, 31);
		cliente.add(menuDesplegable4);
		
		JComboBox cbUsuario = new JComboBox();
		cbUsuario.setBounds(25, 126, 253, 31);
		cliente.add(cbUsuario);
		
		JLabel lblNewLabel = new JLabel("Usuario:");
		lblNewLabel.setHorizontalAlignment(SwingConstants.CENTER);
		lblNewLabel.setFont(new Font("Arial", Font.PLAIN, 12));
		lblNewLabel.setBounds(97, 101, 91, 14);
		cliente.add(lblNewLabel);
	
		eventosCliente=new EventosCliente(this);
	}

	public JComboBox getMenuDesplegable4() {
		return menuDesplegable4;
	}

	public void setMenuDesplegable4(JComboBox menuDesplegable4) {
		this.menuDesplegable4 = menuDesplegable4;
	}
	



}

