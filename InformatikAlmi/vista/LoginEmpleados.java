import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import java.awt.BorderLayout;
import javax.swing.JLabel;
import java.awt.FlowLayout;
import javax.swing.JButton;
import java.awt.Font;
import javax.swing.SwingConstants;
import javax.swing.JTextField;
import javax.swing.JPasswordField;
import javax.swing.JComboBox;

public class LoginEmpleados extends JFrame {

	private static final long serialVersionUID = 1L;
	private JPanel contentPane;
	private JTextField txtUsuario;
	private JPasswordField pwContraseña;

	private EventosLoginEmpleados eventosEmpleados;
	private JComboBox menuDesplegable3_1;
	private JButton btnCargar;


	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					LoginEmpleados frame = new LoginEmpleados();
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
	public LoginEmpleados() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 594, 487);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));

		setContentPane(contentPane);
		contentPane.setLayout(new BorderLayout(0, 0));

		JPanel empleado = new JPanel();
		contentPane.add(empleado, BorderLayout.CENTER);
		empleado.setLayout(null);

		JLabel lblNewLabel_1 = new JLabel("Usuario");
		lblNewLabel_1.setFont(new Font("Arial", Font.BOLD, 17));
		lblNewLabel_1.setHorizontalAlignment(SwingConstants.CENTER);
		lblNewLabel_1.setBounds(219, 56, 112, 35);
		empleado.add(lblNewLabel_1);

		txtUsuario = new JTextField();
		txtUsuario.setBounds(180, 102, 191, 28);
		empleado.add(txtUsuario);
		txtUsuario.setColumns(10);

		JLabel lblNewLabel_2 = new JLabel("Contraseña");
		lblNewLabel_2.setHorizontalAlignment(SwingConstants.CENTER);
		lblNewLabel_2.setFont(new Font("Arial", Font.BOLD, 17));
		lblNewLabel_2.setBounds(213, 177, 118, 35);
		empleado.add(lblNewLabel_2);

		pwContraseña = new JPasswordField();
		pwContraseña.setBounds(172, 223, 199, 28);
		empleado.add(pwContraseña);

		btnCargar = new JButton("Cargar");
		btnCargar.setBounds(219, 285, 112, 25);
		empleado.add(btnCargar);
		btnCargar.setFont(new Font("Arial", Font.BOLD, 14));

		JPanel panel_1 = new JPanel();
		contentPane.add(panel_1, BorderLayout.NORTH);

		JLabel lblNewLabel = new JLabel("Empleados");
		panel_1.add(lblNewLabel);
		lblNewLabel.setHorizontalAlignment(SwingConstants.CENTER);
		lblNewLabel.setFont(new Font("Arial", Font.BOLD, 25));

		eventosEmpleados = new EventosLoginEmpleados(this);
	}

	public JButton getBtnCargar() {
		return btnCargar;
	}

	public JTextField getTxtUsuario() {
		return txtUsuario;
	}

	public void setTxtUsuario(JTextField txtUsuario) {
		this.txtUsuario = txtUsuario;
	}

	public JPasswordField getPwContraseña() {
		return pwContraseña;
	}

	public void setPwContraseña(JPasswordField pwContraseña) {
		this.pwContraseña = pwContraseña;
	}

	public void setBtnCargar(JButton btnCargar) {
		this.btnCargar = btnCargar;
	}
}
