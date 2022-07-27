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
@Table(name = "HorarioDetalle")
public class HorarioDetalle {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "IdHorarioDetalle")
	private Integer idHorarioDetalle;

    @ManyToOne
    @JoinColumn(name="IdHorario")
    private Horario horario;
	
	@Column(name = "Dia")
	private String dia;
	
	@Column(name = "NombreDia")
	private String nombreDia;

	@Column(name = "HoraInicio")
	private String horaInicio;

	@Column(name = "HoraFin")
	private String horaFin;

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

	public Integer getIdHorarioDetalle() {
		return idHorarioDetalle;
	}

	public void setIdHorarioDetalle(Integer idHorarioDetalle) {
		this.idHorarioDetalle = idHorarioDetalle;
	}

	public Horario getHorario() {
		return horario;
	}

	public void setHorario(Horario horario) {
		this.horario = horario;
	}

	public String getDia() {
		return dia;
	}

	public void setDia(String dia) {
		this.dia = dia;
	}

	public String getNombreDia() {
		return nombreDia;
	}

	public void setNombreDia(String nombreDia) {
		this.nombreDia = nombreDia;
	}

	public String getHoraInicio() {
		return horaInicio;
	}

	public void setHoraInicio(String horaInicio) {
		this.horaInicio = horaInicio;
	}

	public String getHoraFin() {
		return horaFin;
	}

	public void setHoraFin(String horaFin) {
		this.horaFin = horaFin;
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
}
