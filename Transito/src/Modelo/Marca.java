
package Modelo;


public class Marca {
    private double idMarca;
    private String nombreMarca;
    private String direccionMarca;

    public Marca(double idMarca, String nombreMarca, String direccionMarca) {
        this.idMarca = idMarca;
        this.nombreMarca = nombreMarca;
        this.direccionMarca = direccionMarca;
    }

    public double getIdMarca() {
        return idMarca;
    }

    public void setIdMarca(double idMarca) {
        this.idMarca = idMarca;
    }

    public String getNombreMarca() {
        return nombreMarca;
    }

    public void setNombreMarca(String nombreMarca) {
        this.nombreMarca = nombreMarca;
    }

    public String getDireccionMarca() {
        return direccionMarca;
    }

    public void setDireccionMarca(String direccionMarca) {
        this.direccionMarca = direccionMarca;
    }
}
