package it.uniroma3.controller;


import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import it.uniroma3.model.Artista;
import it.uniroma3.model.Opera;
import it.uniroma3.service.ArtistaService;
import it.uniroma3.service.OperaService;

@Controller
public class OperaController {

	@Autowired
	private OperaService operaService;
	@Autowired
	private ArtistaService artistaService;

	@ModelAttribute("opera")
	public Opera constructPictureArt(){
		return new Opera();
	}

	@RequestMapping("/opera")
	public String newPicture(){
		return "nuovaOpera";
	}

	@RequestMapping("/opera/{id}")
	public ModelAndView newPictureWithId(@PathVariable Long id){
		Artista artista = artistaService.findOne(id);
		ModelAndView model = new ModelAndView("nuovaOpera");
		model.addObject("artistID", artista.getId());
		return model;
	}

	@RequestMapping(value="/opera/{id}", method = RequestMethod.POST)
	public ModelAndView newPicture(
			HttpSession session,
			@PathVariable("id") Long id,
			@Valid @ModelAttribute("opera") Opera opera, 
			BindingResult result){


		if(result.hasErrors()){
			return new ModelAndView("nuovaOpera", "artistID", id);
		}
		else{
				Artista artista = artistaService.findOne(id);
					ServletContext context = session.getServletContext();
						opera.setArtista(artista);
						operaService.save(opera);
						return new ModelAndView("redirect:/opera/"+id+"?success=true");
				}
		}
	}
					

		

	


