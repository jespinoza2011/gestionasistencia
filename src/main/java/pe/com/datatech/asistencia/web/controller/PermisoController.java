package pe.com.datatech.asistencia.web.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
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
import pe.com.datatech.asistencia.entity.Maestra;
import pe.com.datatech.asistencia.entity.Permiso;
import pe.com.datatech.asistencia.entity.Usuario;
import pe.com.datatech.asistencia.repository.EmpleadoRepository;
import pe.com.datatech.asistencia.repository.MaestraRepository;
import pe.com.datatech.asistencia.repository.MenuRepository;
import pe.com.datatech.asistencia.repository.PermisoRepository;
import pe.com.datatech.asistencia.util.Util;

@Controller
public class PermisoController {


	@Autowired
	private PermisoRepository permisoRepository;

	@Autowired
	private EmpleadoRepository empleadoRepository;

	@Autowired
	private MenuRepository menuRepository;
	
	@Autowired
	private MaestraRepository maestraRepository;
	
	@Autowired
	private Util util;
	
	@GetMapping("/permiso/list")
	public ModelMap getAll(@PageableDefault(size = 10) Pageable pageable,
			@RequestParam(name = "value", required = false) String value, Model model) {
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		model.addAttribute("username", ((Usuario) principal).getUsuario());
		return new ModelMap().addAttribute("permiso", permisoRepository.findAll(pageable));
	}

	@GetMapping("/permiso/form")
	public ModelMap getById(@RequestParam(value = "id", required = false) Permiso permiso, Model model) {
		if (permiso == null) {
			permiso = new Permiso();
		}
		return new ModelMap("permiso", permiso);
	}

	@Transactional
	@PostMapping("/permiso/form")
	public String save(@Valid Permiso permiso, BindingResult result, SessionStatus status) {
		if (result.hasErrors()) {
			return "permiso/form";
		}
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		int idUsuario = Integer.parseInt(String.valueOf(((Usuario) principal).getId()));

		if (permiso.getIdUsuarioCreacion() == null) {
			permiso.setIdUsuarioCreacion(idUsuario);
			permiso.setFechaCreacion(util.fechaActual());
		} else {
			permiso.setIdUsuarioModificacion(idUsuario);
			permiso.setFechaModificacion(util.fechaActual());
		}

		permiso.setEstado("1");
		permisoRepository.save(permiso);
		status.setComplete();
		return "redirect:/permiso/list";
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
	
	@ModelAttribute("allMotivos")
	public List<Maestra> populateMotivos() {
		List<Maestra> lista = maestraRepository.getMaestra(6);
		return lista;
	}

}
