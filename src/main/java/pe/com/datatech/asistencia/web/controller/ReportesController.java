package pe.com.datatech.asistencia.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pe.com.datatech.asistencia.dto.MenuItem;
import pe.com.datatech.asistencia.entity.Usuario;
import pe.com.datatech.asistencia.repository.MenuRepository;
import pe.com.datatech.asistencia.util.Util;


@Controller
public class ReportesController {

	@Autowired
	private MenuRepository menuRepository;

	@Autowired
	private Util util;

	@RequestMapping("/reportes/error")
	public String returnViewName() throws Exception {
		throw new Exception();
	}
	
	@GetMapping("/reportes/list")
	public ModelMap getAll(@PageableDefault(size = 10) Pageable pageable,
			@RequestParam(name = "value", required = false) String value, Model model) {
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		model.addAttribute("username", ((Usuario) principal).getUsuario());
		return new ModelMap().addAttribute("reporte");
	}

	@ModelAttribute("menuItemsList")
	public List<MenuItem> menues(Model model) {
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		model.addAttribute("username", ((Usuario) principal).getUsuario());
		int idUsuario=Integer.parseInt(String.valueOf(((Usuario) principal).getId()));
		return util.agruparMenus(menuRepository.getMenues(1, idUsuario));
	}

}
