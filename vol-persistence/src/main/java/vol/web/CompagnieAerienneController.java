package vol.web;

import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import vol.model.CompagnieAerienne;
import vol.repository.CompagnieAerienneDao;

@Controller
@RequestMapping("/agence/compagnieAerienne")
public class CompagnieAerienneController {

	@Autowired
	private CompagnieAerienneDao compagnieAerienneDao;

	@GetMapping("/")
	public String home() {
		return "forward:liste";
	}

	@GetMapping("/liste")
	public String list(Model model) {
		List<CompagnieAerienne> liste = compagnieAerienneDao.findAll();

		model.addAttribute("compagnieAeriennes", liste);


		return "/agence/compagnieAerienne/liste";
	}

	@GetMapping("/add")
	public ModelAndView add() {
		return new ModelAndView("/agence/compagnieAerienne/edit", "compagnieAerienne", new CompagnieAerienne());
	}

	@GetMapping("/edit")
	public String edit(@RequestParam Long id, Model model) {
		Optional<CompagnieAerienne> compagnieAerienne = compagnieAerienneDao.findById(id);

		if (compagnieAerienne.isPresent()) {
			model.addAttribute("compagnieAerienne", compagnieAerienne.get());
		} else {
			model.addAttribute("compagnieAerienne", new CompagnieAerienne());
		}

		return "/agence/compagnieAerienne/edit";
	}

	@PostMapping("/save") // @Valid , BindingResult result
	public String save(@ModelAttribute("compagnieAerienne") CompagnieAerienne eleve,
			Model model) {
//		if (result.hasErrors()) {
//			System.out.println("La compagnie aérienne n'a pas été enregistré.");
//			return "/agence/compagnieAerienne/edit";
//		}
		compagnieAerienneDao.save(eleve);

		return "redirect:liste";
	}

	@GetMapping("/delete")
	public String delete(@RequestParam Long id) {

		compagnieAerienneDao.deleteById(id);

		return "forward:liste";
	}

	@GetMapping("/cancel")
	public String cancel() {
		return "forward:liste";
	}

//	 @InitBinder
//	 protected void initBinder(WebDataBinder binder) {
//	 binder.addValidators(new CompagnieAerienneValidator());
//	 }

}
