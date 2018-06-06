package vol.web;

import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
//import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import vol.model.Ville;

import vol.repository.VilleDao;

@Controller 
@RequestMapping("/agence/ville")
public class VilleController {
	
	@Autowired
	VilleDao villeDao; 
	
	@GetMapping("/")
	public String home() {
		return "forward:list";
	}
  
	@GetMapping("/list")
	public String list(Model model) {
		List<Ville> liste = villeDao.findAll();
		
		model.addAttribute("villes", liste);

		return "/agence/ville/list";
	}
	@GetMapping("/add")
	public ModelAndView add() {
		return new ModelAndView("/agence/ville/edit", "ville", new Ville());
	}
	
	@GetMapping("/edit")
	public String edit(@RequestParam Long id, Model model) {
		Optional<Ville> ville = villeDao.findById(id);

		if (ville.isPresent()) {
			model.addAttribute("ville", ville.get());
		} else {
			model.addAttribute("ville", new Ville());
		}

		return "/agence/ville/edit";
	}
	@PostMapping("/save")
	public String save(@Valid @ModelAttribute("ville") Ville ville, BindingResult errors, Model model) {
//		new EleveValidator().validate(eleve, errors);
		
		if(errors.hasErrors()) {
			System.out.println("Erreur(s) de saisie");
			
			return "agence/ville/edit";
		} else {

		villeDao.save(ville);
		}
		return "redirect:list";
		
	}

	@GetMapping("/delete")
	public String delete(@RequestParam Long id) {

		villeDao.deleteById(id);

		return "forward:list";
	}

	@GetMapping("/cancel")
	public String cancel() {
		return "forward:list";
	}
//	
//	@InitBinder
//	protected void initBinder(WebDataBinder binder) {
//		binder.addValidators(new EleveValidator());
//	}

}