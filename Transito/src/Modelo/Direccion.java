
package Modelo;


class Direccion {
    private Long id;
    private String calle;
    private Long numero;
    private String ciudad;
    private String departamento;

    public Direccion(String calle, Long numero, String ciudad, String departamento) {
        this.calle = calle;
        this.numero = numero;
        this.ciudad = ciudad;
        this.departamento = departamento;
    }

    public String getCalle() {
        return calle;
    }

    public void setCalle(String calle) {
        this.calle = calle;
    }

    public Long getNumero() {
        return numero;
    }

    public void setNumero(Long numero) {
        this.numero = numero;
    }

    public String getCiudad() {
        return ciudad;
    }

    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }

    public String getDepartamento() {
        return departamento;
    }

    public void setDepartamento(String departamento) {
        this.departamento = departamento;
    }
}
