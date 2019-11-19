
package Modelo;

import org.joda.time.DateTime;


public class Vehiculo {
    private Double idVehiculo;
    private String fechaMatriculaVehiculo;
    private double numeroModelo;
    private double nitPersona;

    public Vehiculo(Double idVehiculo, String fechaMatriculaVehiculo, double numeroModelo, double nitPersona) {
        this.idVehiculo = idVehiculo;
        this.fechaMatriculaVehiculo = fechaMatriculaVehiculo;
        this.numeroModelo = numeroModelo;
        this.nitPersona = nitPersona;
    }

    public Double getIdVehiculo() {
        return idVehiculo;
    }

    public void setIdVehiculo(Double idVehiculo) {
        this.idVehiculo = idVehiculo;
    }

    public String getFechaMatriculaVehiculo() {
        return fechaMatriculaVehiculo;
    }

    public void setFechaMatriculaVehiculo(String fechaMatriculaVehiculo) {
        this.fechaMatriculaVehiculo = fechaMatriculaVehiculo;
    }

    public double getNumeroModelo() {
        return numeroModelo;
    }

    public void setNumeroModelo(double numeroModelo) {
        this.numeroModelo = numeroModelo;
    }

    public double getNitPersona() {
        return nitPersona;
    }

    public void setNitPersona(double nitPersona) {
        this.nitPersona = nitPersona;
    }
    
    
}
