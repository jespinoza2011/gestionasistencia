package pe.com.datatech.asistencia.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Past;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "Horario")
public class Horario {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "IdHorario")
	private Integer idHorario;

	@Column(name = "IdEmpresa")
	private Integer idEmpresa;

	@Column(name = "NombreHorario")
	private String nombreHorario;

	@Column(name = "Descripcion")
	private String descripcion;

	@Column(name = "idTipoHorario")
	private String idTipoHorario;

	@Column(name = "FlagActivo")
	private String estado;

	@Column(name = "IdUsuarioCreacion")
	private Integer idUsuarioCreacion;

	@Past
	@Column(name = "FechaCreacion")
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date fechaCreacion;

	@Column(name = "IdUsuarioModificacion")
	private Integer idUsuarioModificacion;

	@Past
	@Column(name = "FechaModificacion")
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date fechaModificacion;

	@OneToMany(mappedBy = "horario")
	private List<HorarioDetalle> detalles = new ArrayList<>();

	public Integer getIdHorario() {
		return idHorario;
	}

	public void setIdHorario(Integer idHorario) {
		this.idHorario = idHorario;
	}

	public Integer getIdEmpresa() {
		return idEmpresa;
	}

	public void setIdEmpresa(Integer idEmpresa) {
		this.idEmpresa = idEmpresa;
	}

	public String getNombreHorario() {
		return nombreHorario;
	}

	public void setNombreHorario(String nombreHorario) {
		this.nombreHorario = nombreHorario;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public String getIdTipoHorario() {
		return idTipoHorario;
	}

	public void setIdTipoHorario(String idTipoHorario) {
		this.idTipoHorario = idTipoHorario;
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

	public List<HorarioDetalle> getDetalles() {
		return detalles;
	}

	public void setDetalles(List<HorarioDetalle> detalles) {
		this.detalles = detalles;
	}
}
