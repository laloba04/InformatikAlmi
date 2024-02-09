import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.border.LineBorder;

import java.awt.BorderLayout;
import javax.swing.JLabel;
import javax.swing.SwingConstants;
import java.awt.Font;
import javax.swing.JButton;
import javax.swing.JLayeredPane;
import javax.swing.JComboBox;
import java.awt.FlowLayout;
import javax.swing.JList;
import java.awt.CardLayout;
import java.awt.Color;

import javax.swing.BoxLayout;
import java.awt.GridBagLayout;
import javax.swing.ListSelectionModel;

public class CompraComponente extends JFrame {

	private static final long serialVersionUID = 1L;
	private JPanel contentPane;
	private JComboBox<String> menuDesplegable;
	
	
	private final JPanel panel_1 = new JPanel();
	

	private EventosComponentes eventosComponentes;
	private CompraEquipos compraEquipos;
	private LoginEmpleados loginEmpleados;
	
	
	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					CompraComponente frame = new CompraComponente();
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
	public CompraComponente() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 899, 663);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));

		setContentPane(contentPane);
		contentPane.setLayout(new BorderLayout(0, 0));
		
		JPanel panel = new JPanel();
		contentPane.add(panel, BorderLayout.SOUTH);
		
		JButton btnCesta1 = new JButton("Añadir a la cesta");
		btnCesta1.setFont(new Font("Arial", Font.BOLD, 15));
		panel.add(btnCesta1);
		
		JPanel componentes = new JPanel();
		contentPane.add(componentes, BorderLayout.CENTER);
		componentes.setLayout(null);
		
		  menuDesplegable = new JComboBox<>();
		  	menuDesplegable.addItem("Componentes");
	        menuDesplegable.addItem("Equipos");
	        menuDesplegable.addItem("Cliente");
	        menuDesplegable.setBounds(0, 0, 128, 31);
	        componentes.add(menuDesplegable);
	            
	        JComboBox comboBox = new JComboBox();
	        comboBox.setBounds(10, 205, 190, 31);
	        componentes.add(comboBox);
	        
	        JLabel lblNewLabel_1 = new JLabel("Tipo de producto");
	        lblNewLabel_1.setHorizontalAlignment(SwingConstants.CENTER);
	        lblNewLabel_1.setFont(new Font("Arial", Font.PLAIN, 12));
	        lblNewLabel_1.setBounds(43, 180, 120, 14);
	        componentes.add(lblNewLabel_1);
	        
	        JPanel panel_2 = new JPanel();
	        panel_2.setBounds(397, 73, 419, 436);
	        componentes.add(panel_2);
	        panel_2.setLayout(new FlowLayout(FlowLayout.CENTER, 5, 5));
	        
	        JList lstNombre = new JList();
	        lstNombre.setFont(new Font("Arial", Font.PLAIN, 12));
	        lstNombre.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
	        panel_2.add(lstNombre);
	        lstNombre.setBorder(new LineBorder(Color.BLACK));
	        
	        JList lstPrecio = new JList();
	        lstPrecio.setFont(new Font("Arial", Font.PLAIN, 12));
	        lstPrecio.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
	        panel_2.add(lstPrecio);
	        lstPrecio.setBorder(new LineBorder(Color.BLACK));
	        contentPane.add(panel_1, BorderLayout.NORTH);
	        
	        JLabel lblNewLabel = new JLabel("Selección de productos");
	        panel_1.add(lblNewLabel);
	        lblNewLabel.setFont(new Font("Arial", Font.BOLD, 25));
	        lblNewLabel.setHorizontalAlignment(SwingConstants.CENTER);
	
	        
	        eventosComponentes=new EventosComponentes(this);
	}

	public JComboBox<String> getMenuDesplegable() {
		return menuDesplegable;
	}

	public void setMenuDesplegable(JComboBox<String> menuDesplegable) {
		menuDesplegable = menuDesplegable;
	}
}
