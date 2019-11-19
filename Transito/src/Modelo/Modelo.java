/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;


public class Modelo {
    private double numeroModelo;
    private String nombre_Modelo;
    private double potenciaModelo;
    private double idMarca;

    public Modelo(double numeroModelo, String nombre_Modelo, double potenciaModelo, double idMarca) {
        this.numeroModelo = numeroModelo;
        this.nombre_Modelo = nombre_Modelo;
        this.potenciaModelo = potenciaModelo;
        this.idMarca = idMarca;
    }

    public double getNumeroModelo() {
        return numeroModelo;
    }

    public void setNumeroModelo(double numeroModelo) {
        this.numeroModelo = numeroModelo;
    }

    public String getNombre_Modelo() {
        return nombre_Modelo;
    }

    public void setNombre_Modelo(String nombre_Modelo) {
        this.nombre_Modelo = nombre_Modelo;
    }

    public double getPotenciaModelo() {
        return potenciaModelo;
    }

    public void setPotenciaModelo(double potenciaModelo) {
        this.potenciaModelo = potenciaModelo;
    }

    public double getIdMarca() {
        return idMarca;
    }

    public void setIdMarca(double idMarca) {
        this.idMarca = idMarca;
    }
    
    
}
