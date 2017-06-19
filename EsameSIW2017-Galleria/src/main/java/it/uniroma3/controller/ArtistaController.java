package it.uniroma3.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import it.uniroma3.model.Artista;
import it.uniroma3.repository.ArtistaRepository;
import it.uniroma3.service.ArtistaService;

@Controller
public class ArtistaController {
	
	@Autowired
	private ArtistaService artistaService;
	
	
	
	@ModelAttribute("artista")
	public Artista constructArtist(){
		return new Artista();
	}
	
	
	
	@RequestMapping("/artista")
	public String showArtistForm(){
		return "nuovoArtista";
	}
	
	@RequestMapping(value="/artista", method = RequestMethod.POST)
	public String newArtist(@Valid @ModelAttribute("artista") Artista artista, BindingResult result){
		if(result.hasErrors())
			return "nuovoArtista";
		else{
			artistaService.save(artista);
			return "redirect:/artista?success=true";
		}
	}
	
	
	
	@RequestMapping("/artisti")
	public String listArtist(Model model){
		model.addAttribute("artisti", artistaService.findAll());
		return "artisti";
	}
	
	@RequestMapping("/artisti/{id}")
	public String getArtista(@PathVariable Long id, Model model){
		Artista artista = artistaService.findOneWithOpere(id);
		model.addAttribute("artista", artista);
		return "dettagliArtista";
	}
	
	
	
	@RequestMapping("/artisti/remove/{id}")
	public String deleteArtista(@PathVariable Long id){
		artistaService.delete(id);
		return "redirect:/artisti";
	}
	
	
	
	@RequestMapping("/modifica/{id}")
	public String editArtist(@PathVariable Long id, Model model){
		Artista artista = artistaService.findOne(id);
		model.addAttribute("artista", artista);
		return "modificaArtista";
	}
	
	@RequestMapping(value="/modifica/{id}", method = RequestMethod.POST)
	public ModelAndView editCrudArtist(@PathVariable Long id, @ModelAttribute("artista") Artista artista, BindingResult result){
		if(result.hasErrors())
			return new ModelAndView("modificaArtista","artista", artista);
		else{
			artistaService.save(artista);
			return new ModelAndView("redirect:/artisti");
		}
	}
	

}
