package pe.com.datatech.asistencia.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ControlMarcacion")
public class ControlMarcacion {

	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "IdEmpleado")
	private Integer idEmpleado;

	@Column(name = "IdEmpresa")
	private Integer idEmpresa;

	@Column(name = "IdHorario")
	private Integer idHorario;

	@Column(name = "FechaMarcacion")
	private Date fechaMarcacion;

	@Column(name = "HoraTrabajoInicio")
	private String horaTrabajoInicio;

	@Column(name = "HoraTrabajoFin")
	private String horaTrabajoFin;

	@Column(name = "HorasTrabajadas")
	private String horasTrabajadas;

	@Column(name = "HorasTardanza")
	private String horasTardanza;

	@Column(name = "HorasExtra")
	private String horasExtra;

	public Integer getIdEmpleado() {
		return idEmpleado;
	}

	public void setIdEmpleado(Integer idEmpleado) {
		this.idEmpleado = idEmpleado;
	}

	public Integer getIdEmpresa() {
		return idEmpresa;
	}

	public void setIdEmpresa(Integer idEmpresa) {
		this.idEmpresa = idEmpresa;
	}

	public Integer getIdHorario() {
		return idHorario;
	}

	public void setIdHorario(Integer idHorario) {
		this.idHorario = idHorario;
	}

	public Date getFechaMarcacion() {
		return fechaMarcacion;
	}

	public void setFechaMarcacion(Date fechaMarcacion) {
		this.fechaMarcacion = fechaMarcacion;
	}

	public String getHoraTrabajoInicio() {
		return horaTrabajoInicio;
	}

	public void setHoraTrabajoInicio(String horaTrabajoInicio) {
		this.horaTrabajoInicio = horaTrabajoInicio;
	}

	public String getHoraTrabajoFin() {
		return horaTrabajoFin;
	}

	public void setHoraTrabajoFin(String horaTrabajoFin) {
		this.horaTrabajoFin = horaTrabajoFin;
	}

	public String getHorasTrabajadas() {
		return horasTrabajadas;
	}

	public void setHorasTrabajadas(String horasTrabajadas) {
		this.horasTrabajadas = horasTrabajadas;
	}

	public String getHorasTardanza() {
		return horasTardanza;
	}

	public void setHorasTardanza(String horasTardanza) {
		this.horasTardanza = horasTardanza;
	}

	public String getHorasExtra() {
		return horasExtra;
	}

	public void setHorasExtra(String horasExtra) {
		this.horasExtra = horasExtra;
	}

}
