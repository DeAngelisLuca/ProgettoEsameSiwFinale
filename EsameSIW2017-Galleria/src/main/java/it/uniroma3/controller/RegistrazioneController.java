package it.uniroma3.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import it.uniroma3.model.Utente;
import it.uniroma3.service.UtenteService;

@Controller
@RequestMapping("/register")
public class RegistrazioneController {
	
	@Autowired
	private UtenteService utenteService;
	
	@ModelAttribute("user")
	public Utente constructUser(){
		return new Utente();
	}
	
	@RequestMapping
	public String showRegister(){
		return "user-register";
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String newRegister(@Valid @ModelAttribute("user") Utente user, BindingResult result){
		if(result.hasErrors())
			return "user-register";
		else{
			utenteService.save(user);
			return "redirect:/register?success=true";
		}
	}

}
