package vol.web;

import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import vol.model.Reservation;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import vol.repository.ReservationDao;

@Controller
@RequestMapping("/agence/reservation")
public class ReservationController {
	
	@Autowired
	private ReservationDao reservationDao;

	@GetMapping("/")
	public String home() {
		return "";
	}

	@GetMapping("/list")
	public String list(Model model) {
		List<Reservation> liste = reservationDao.findAll();
		model.addAttribute("reservations", liste);
		return "/agence/reservation/liste";
	}

	@GetMapping("/add")
	public ModelAndView add() {
		return new ModelAndView("/agence/reservation/edit", "reservation", new Reservation());
	}

	@GetMapping("/edit")
	public String edit(@RequestParam Long id, Model model) {
		Optional<Reservation> reservation = reservationDao.findById(id);

		if (reservation.isPresent()) {
			model.addAttribute("reservation", reservation.get());
		} else {
			model.addAttribute("reservation", new Reservation());
		}

		return "/agence/reservation/edit";
	}

	@PostMapping("/save")
	public String save(@Valid @ModelAttribute("reservation") Reservation reservation, BindingResult result) {

//		if (result.hasErrors()) {
//			return "/reservation/edit";
//		}

		reservationDao.save(reservation);

		return "redirect:list";
	}

	@GetMapping("/delete")
	public String delete(@RequestParam Long id) {

		reservationDao.deleteById(id);

		return "forward:list";
	}

	@GetMapping("/cancel")
	public String cancel() {
		return "forward:list";
	}
}