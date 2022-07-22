package pe.com.datatech.asistencia.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Past;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "Marcacion")
public class Marcacion {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "IdMarcacion")
	private Integer idMarcacion;

	@Past
	@Column(name = "FechaMarcacion")
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date fechaMarcacion;

	@Column(name = "HoraMarcacion")
	private String horaMarcacion;

	@Column(name = "HoraMarcacionReal")
	private String horaMarcacionReal;

	@Column(name = "FlagActivo")
	private String estado;

	@Column(name = "IdUsuarioCreacion")
	private Integer idUsuarioCreacion;

	@Column(name = "FechaCreacion")
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date fechaCreacion;

	@Column(name = "IdUsuarioModificacion")
	private Integer idUsuarioModificacion;

	@Column(name = "FechaModificacion")
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date fechaModificacion;

	@ManyToOne
	@JoinColumn(name = "IdEmpleado")
	private Empleado empleado;

	public Integer getIdMarcacion() {
		return idMarcacion;
	}

	public void setIdMarcacion(Integer idMarcacion) {
		this.idMarcacion = idMarcacion;
	}

	public Date getFechaMarcacion() {
		return fechaMarcacion;
	}

	public void setFechaMarcacion(Date fechaMarcacion) {
		this.fechaMarcacion = fechaMarcacion;
	}

	public String getHoraMarcacion() {
		return horaMarcacion;
	}

	public void setHoraMarcacion(String horaMarcacion) {
		this.horaMarcacion = horaMarcacion;
	}

	public String getHoraMarcacionReal() {
		return horaMarcacionReal;
	}

	public void setHoraMarcacionReal(String horaMarcacionReal) {
		this.horaMarcacionReal = horaMarcacionReal;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public Integer getIdUsuarioCreacion() {
		return idUsuarioCreacion;
	}

	public void setIdUsuarioCreacion(Integer idUsuarioCreacion) {
		this.idUsuarioCreacion = idUsuarioCreacion;
	}

	public Date getFechaCreacion() {
		return fechaCreacion;
	}

	public void setFechaCreacion(Date fechaCreacion) {
		this.fechaCreacion = fechaCreacion;
	}

	public Integer getIdUsuarioModificacion() {
		return idUsuarioModificacion;
	}

	public void setIdUsuarioModificacion(Integer idUsuarioModificacion) {
		this.idUsuarioModificacion = idUsuarioModificacion;
	}

	public Date getFechaModificacion() {
		return fechaModificacion;
	}

	public void setFechaModificacion(Date fechaModificacion) {
		this.fechaModificacion = fechaModificacion;
	}

	public Empleado getEmpleado() {
		return empleado;
	}

	public void setEmpleado(Empleado empleado) {
		this.empleado = empleado;
	}

}