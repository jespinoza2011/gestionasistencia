package pe.com.datatech.asistencia.web.controller.enums;

public enum EnumPermiso {
	VAC("VACACIONES"),
	DME("DESCANSO MEDICO"),
	LAC("LACTANCIA"),
	PAT("PATERNIDAD"),
	MAT("MATERNIDAD O EMBARAZO"),
	FFA("FALLECIMIENTO FAMILIAR"),;

	private final String value;

	private EnumPermiso(String value) {
		this.value = value;
	}

	public String getValue() {
		return value;
	}
}
