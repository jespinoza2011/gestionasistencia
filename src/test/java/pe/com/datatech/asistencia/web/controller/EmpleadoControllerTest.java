package pe.com.datatech.asistencia.web.controller;

import static org.junit.Assert.assertNotNull;

import java.util.Date;

import org.junit.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;

import pe.com.datatech.asistencia.entity.Area;
import pe.com.datatech.asistencia.entity.Empleado;
import pe.com.datatech.asistencia.repository.EmpleadoRepository;

public class EmpleadoControllerTest {

	@InjectMocks
	EmpleadoController employeeController;

	@Mock
	EmpleadoRepository empleadoRepository;

	@Test
	public void validarDatosEmpleado() {
		Area area = new Area();
		area.setIdArea(1);
		area.setNombreArea("Sistemas");
		Date fecha = new Date();
		Empleado empleado = new Empleado(1, "75648945", "Espinoza", "Garcia", "Jose Luis", "DNI", "75648945",
				"pruebas@gmail.com", "Los sauces", "999878569", "M", "1", fecha, area);
		assertNotNull(empleado);
	}
	
	@Test
	public void validarDatosArea() {
		Area area = new Area();
		area.setIdArea(1);
		area.setNombreArea("Sistemas");;
		assertNotNull(area);
	}
}
