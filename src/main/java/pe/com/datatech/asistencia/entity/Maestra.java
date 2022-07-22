package pe.com.datatech.asistencia.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "TablaMaestra")
public class Maestra {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "IdTabla")
	private Integer idTabla;

	@Column(name = "IdColumna")
	private Integer idColumna;

	@Column(name = "Valor")
	private String valor;

	@Column(name = "Descripcion")
	private String descripcion;

	public Integer getIdTabla() {
		return idTabla;
	}

	public void setIdTabla(Integer idTabla) {
		this.idTabla = idTabla;
	}

	public Integer getIdColumna() {
		return idColumna;
	}

	public void setIdColumna(Integer idColumna) {
		this.idColumna = idColumna;
	}

	public String getValor() {
		return valor;
	}

	public void setValor(String valor) {
		this.valor = valor;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

}
