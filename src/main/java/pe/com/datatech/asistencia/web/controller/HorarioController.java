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
import pe.com.datatech.asistencia.entity.Horario;
import pe.com.datatech.asistencia.entity.HorarioDetalle;
import pe.com.datatech.asistencia.entity.Maestra;
import pe.com.datatech.asistencia.entity.Usuario;
import pe.com.datatech.asistencia.repository.HorarioRepository;
import pe.com.datatech.asistencia.repository.MaestraRepository;
import pe.com.datatech.asistencia.repository.MenuRepository;
import pe.com.datatech.asistencia.util.Util;

@Controller
public class HorarioController {

	@Autowired
	private HorarioRepository horarioRepository;

	@Autowired
	private MenuRepository menuRepository;
	
	@Autowired
	private MaestraRepository maestraRepository;
	
	@Autowired
	private Util util;
	
	@GetMapping("/horario/list")
	public ModelMap getAll(@PageableDefault(size = 10) Pageable pageable,
			@RequestParam(name = "value", required = false) String value, Model model) {
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		model.addAttribute("username", ((Usuario) principal).getUsuario());
		Object horario = horarioRepository.findAll(pageable);		
		return new ModelMap().addAttribute("horario", horario);
	}

	@GetMapping("/horario/form")
	public ModelMap getById(@RequestParam(value = "id", required = false) Horario horario, Model model) {
		if (horario == null) {
			horario = new Horario();
		}
		return new ModelMap("horario", horario);
	}

	@Transactional
	@PostMapping("/horario/form")
	public String save(@Valid Horario horario, BindingResult result, SessionStatus status) {
		if (result.hasErrors()) {
			return "horario/form";
		}
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		int idUsuario = Integer.parseInt(String.valueOf(((Usuario) principal).getId()));
		horario.setIdEmpresa(1);
		
		if (horario.getIdUsuarioCreacion() == null) {
			horario.setIdUsuarioCreacion(idUsuario);
			horario.setFechaCreacion(util.fechaActual());
		} else {
			horario.setIdUsuarioModificacion(idUsuario);
			horario.setFechaModificacion(util.fechaActual());
		}

		horario.setEstado("1");
		horarioRepository.save(horario);
		status.setComplete();
		return "redirect:/horario/list";
	}

	@ModelAttribute("menuItemsList")
	public List<MenuItem> menues(Model model) {
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		model.addAttribute("username", ((Usuario) principal).getUsuario());
		int idUsuario = Integer.parseInt(String.valueOf(((Usuario) principal).getId()));
		return util.agruparMenus(menuRepository.getMenues(1, idUsuario));
	}
	
	@ModelAttribute("allTipoHorario")
	public List<Maestra> populateMotivos() {
		List<Maestra> lista = maestraRepository.getMaestra(4);
		return lista;
	}
}
