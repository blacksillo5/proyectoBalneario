package logica;

public interface Balneario {
    public boolean registrarUsuario();
    public boolean iniciarSesion();

    public void hacerReserva(String idCliente);
    public void sombrillaGlorieta(String idReserva, String idCliente);
    public void arrendarAdicionales(String idCliente);
    public void cancelarReserva(String idCliente);

    public String reservarTemporada(String idCliente);
    public String reservarSemana(String idCliente);
    public void reservarDia(String idCliente);

    public void imprimirMenu();
    public void menuCliente();
    public void menuReserva();
}
