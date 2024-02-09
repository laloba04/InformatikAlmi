import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.border.LineBorder;

import java.awt.BorderLayout;
import java.awt.Color;

import javax.swing.JLabel;
import javax.swing.SwingConstants;
import java.awt.Font;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JList;
import java.awt.GridBagLayout;
import java.awt.GridBagConstraints;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import javax.swing.JTextPane;
import javax.swing.JScrollPane;

public class CompraEquipos extends JFrame {

	private static final long serialVersionUID = 1L;
	private JPanel contentPane;
	private JComboBox comboBox;
	private JList lstEquipos;
	private JComboBox<String> menuDesplegable2;

	private EventosEquipos eventosEquipos;
	private CompraComponente compraComponente;
	private LoginEmpleados loginEmpleados;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					CompraEquipos frame = new CompraEquipos();
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
	public CompraEquipos() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 609, 660);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));

		setContentPane(contentPane);
		contentPane.setLayout(new BorderLayout(0, 0));

		JPanel equipos = new JPanel();
		equipos.setBackground(new Color(255, 255, 255));
		contentPane.add(equipos, BorderLayout.CENTER);
		equipos.setLayout(null);

		comboBox = new JComboBox();
		comboBox.setBackground(new Color(255, 255, 255));
		comboBox.setForeground(new Color(0, 0, 0));
		comboBox.setFont(new Font("Arial", Font.PLAIN, 12));
		comboBox.setBounds(202, 76, 159, 32);
		equipos.add(comboBox);

		lstEquipos = new JList();
		lstEquipos.setFont(new Font("Arial", Font.PLAIN, 12));
		lstEquipos.setBounds(141, 119, 278, 367);
		equipos.add(lstEquipos);
		lstEquipos.setBorder(new LineBorder(Color.BLACK));

		JLabel lblNewLabel_1 = new JLabel("Seleccione la placa base:");
		lblNewLabel_1.setForeground(new Color(255, 255, 255));
		lblNewLabel_1.setFont(new Font("Arial", Font.PLAIN, 15));
		lblNewLabel_1.setHorizontalAlignment(SwingConstants.CENTER);
		lblNewLabel_1.setBounds(189, 32, 187, 14);
		equipos.add(lblNewLabel_1);

		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setBounds(330, 238, 2, 2);
		equipos.add(scrollPane);

		menuDesplegable2 = new JComboBox<>();
		menuDesplegable2.setFont(new Font("Arial", Font.PLAIN, 12));
		menuDesplegable2.addItem("Equipos");
		menuDesplegable2.addItem("Componentes");
		menuDesplegable2.addItem("Cliente");
		menuDesplegable2.setBounds(0, 0, 128, 31);
		equipos.add(menuDesplegable2);

		JButton Cesta2 = new JButton("Añadir a la cesta");
		Cesta2.setBounds(202, 497, 147, 27);
		equipos.add(Cesta2);
		Cesta2.setFont(new Font("Arial", Font.BOLD, 15));

		JPanel panel_1 = new JPanel();
		panel_1.setBackground(new Color(255, 255, 255));
		contentPane.add(panel_1, BorderLayout.NORTH);

		JLabel lblNewLabel = new JLabel("Selección de equipo");
		lblNewLabel.setBackground(new Color(0, 0, 160));
		lblNewLabel.setForeground(new Color(0, 0, 0));
		panel_1.add(lblNewLabel);
		lblNewLabel.setFont(new Font("Arial", Font.BOLD, 25));
		lblNewLabel.setHorizontalAlignment(SwingConstants.CENTER);
		Cesta2.addActionListener(new ActionListener() {
			
			public void actionPerformed(ActionEvent e) {
			}
		});

		eventosEquipos=new EventosEquipos(this);
	}
	

	public JComboBox<String> getMenuDesplegable2() {
		return menuDesplegable2;
	}

	public void setMenuDesplegable2(JComboBox<String> menuDesplegable2) {
		this.menuDesplegable2 = menuDesplegable2;
	}


	
}
	
	




