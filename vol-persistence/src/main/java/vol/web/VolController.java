package vol.web;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import vol.model.Vol;
import vol.repository.CompagnieAerienneVolDao;
import vol.repository.VolDao;

@Controller
@RequestMapping("/agence/vol")
public class VolController {
	@Autowired
	private VolDao volDao;
	@Autowired
	private CompagnieAerienneVolDao compagnieAerienneVolDaoDao;
	
	@GetMapping("/")
	public String home() {
		return "forward:list";
	}
	
	@GetMapping("/list")
	public String list(Model model) {
		List<Vol> list = volDao.findAll();

		model.addAttribute("vols", list);

		return "/agence/vol/list";
	}
	
	@GetMapping("/add")
	public ModelAndView add() {
		return new ModelAndView("/agence/vol/edit", "vol", new Vol());
	}
	
	@GetMapping("/edit")
	public String edit(@RequestParam Long id, Model model) {
		Optional<Vol> vol = volDao.findById(id);

		if (vol.isPresent()) {
			model.addAttribute("vol", vol.get());
		} else {
			model.addAttribute("vol", new Vol());
		}

		return "/agence/vol/edit";
	}
	
	@PostMapping("/save")
	public String save(@ModelAttribute("vol") Vol vol, BindingResult errors, Model model) {
//		new EleveValidator().validate(eleve, errors);
		
		if(errors.hasErrors()) {
			System.out.println("Erreur(s) de saisi");
			
			return "/agence/vol/edit";
		} else {

		volDao.save(vol);
		}
		return "redirect:list";
		
	}
	
	@GetMapping("/delete")
	public String delete(@RequestParam Long id) {

		volDao.deleteById(id);
		

		return "forward:list";
	}
	
	
	@GetMapping("/cancel")
	public String cancel() {
		return "forward:list";
	}

}
