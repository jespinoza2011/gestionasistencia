package pe.com.datatech.asistencia.web.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;

import pe.com.datatech.asistencia.dto.MenuItem;
import pe.com.datatech.asistencia.entity.Empleado;
import pe.com.datatech.asistencia.entity.Marcacion;
import pe.com.datatech.asistencia.entity.Usuario;
import pe.com.datatech.asistencia.repository.EmpleadoRepository;
import pe.com.datatech.asistencia.repository.MarcacionRepository;
import pe.com.datatech.asistencia.repository.MenuRepository;
import pe.com.datatech.asistencia.util.Util;

@Controller
public class MarcacionController {

	@Autowired
	private MarcacionRepository marcacionRepository;

	@Autowired
	private EmpleadoRepository empleadoRepository;

	@Autowired
	private MenuRepository menuRepository;

	@Autowired
	private Util util;
	
	@GetMapping("/marcacion/list")
	public ModelMap getAll(@PageableDefault(sort = {"fechaMarcacion"}, direction = Sort.Direction.DESC, size = 10) Pageable pageable,
			@RequestParam(name = "value", required = false) String value, Model model) {
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		model.addAttribute("username", ((Usuario) principal).getUsuario());		
		return new ModelMap().addAttribute("marcacion", marcacionRepository.findAll(pageable));		
	}

	@GetMapping("/marcacion/form")
	public ModelMap getById(@RequestParam(value = "id", required = false) Marcacion marcacion, Model model) {
		if (marcacion == null) {
			marcacion = new Marcacion();
		}
		return new ModelMap("marcacion", marcacion);
	}

	@Transactional
	@PostMapping("/marcacion/form")
	public String save(@Valid Marcacion marcacion, BindingResult result, SessionStatus status) {
		if (result.hasErrors()) {
			return "marcacion/form";
		}
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		int idUsuario = Integer.parseInt(String.valueOf(((Usuario) principal).getId()));

		if (marcacion.getHoraMarcacionReal() == null) {
			marcacion.setHoraMarcacionReal(marcacion.getHoraMarcacion());
		}

		if (marcacion.getIdUsuarioCreacion() == null) {
			marcacion.setIdUsuarioCreacion(idUsuario);
			marcacion.setFechaCreacion(util.fechaActual());
		} else {
			marcacion.setIdUsuarioModificacion(idUsuario);
			marcacion.setFechaModificacion(util.fechaActual());
		}

		marcacion.setEstado("1");
		marcacionRepository.save(marcacion);
		status.setComplete();
		return "redirect:/marcacion/list";
	}

	@ModelAttribute("menuItemsList")
	public List<MenuItem> menues(Model model) {
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		model.addAttribute("username", ((Usuario) principal).getUsuario());
		int idUsuario = Integer.parseInt(String.valueOf(((Usuario) principal).getId()));
		return util.agruparMenus(menuRepository.getMenues(1, idUsuario));
	}

	@ModelAttribute("allEmpleado")
	public List<Empleado> populateTiposDocumento() {
		return empleadoRepository.findAll();
	}

}
