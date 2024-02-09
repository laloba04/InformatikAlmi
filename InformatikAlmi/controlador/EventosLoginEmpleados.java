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
        this.baseDeDatos = new BaseDeDatos(); // Crea una nueva instancia de BaseDeDatos
        registrarEventos();
    }

    private void registrarEventos() {
        loginEmpleados.getBtnCargar().addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                String usuario = loginEmpleados.getTxtUsuario().getText();
                String password = new String(loginEmpleados.getPwContraseña().getPassword());

                if (baseDeDatos.autenticarUsuario(usuario, password)) {
                    compraEquipos = new CompraEquipos();
                    compraEquipos.setVisible(true);
                    loginEmpleados.setVisible(false);
                } else {
                    System.out.print("loginEmpleados, Usuario y/o contraseña incorrectos");
                }
            }
        });
    }
}