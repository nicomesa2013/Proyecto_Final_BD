
package Modelo;

public class Persona {
    private Long NIT;
    private String nombre;
    private String apellidos;
    private String fecha;
    private Direccion direccion;
    private TipoPersona tipoPersona;
    private Vehiculo vehiculo;
    private Infraccion infraccion;

    public Persona(Long NIT, String nombre, String apellidos, String fecha, Direccion direccion, TipoPersona tipoPersona, Vehiculo vehiculo, Infraccion infraccion) {
        this.NIT = NIT;
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.fecha = fecha;
        this.direccion = direccion;
        this.tipoPersona = tipoPersona;
        this.vehiculo = vehiculo;
        this.infraccion = infraccion;
    }

    public Long getNIT() {
        return NIT;
    }

    public void setNIT(Long NIT) {
        this.NIT = NIT;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public Direccion getDireccion() {
        return direccion;
    }

    public void setDireccion(Direccion direccion) {
        this.direccion = direccion;
    }

    public TipoPersona getTipoPersona() {
        return tipoPersona;
    }

    public void setTipoPersona(TipoPersona tipoPersona) {
        this.tipoPersona = tipoPersona;
    }

    public Vehiculo getVehiculo() {
        return vehiculo;
    }

    public void setVehiculo(Vehiculo vehiculo) {
        this.vehiculo = vehiculo;
    }

    public Infraccion getInfraccion() {
        return infraccion;
    }

    public void setInfraccion(Infraccion infraccion) {
        this.infraccion = infraccion;
    }
    
    
    
}
