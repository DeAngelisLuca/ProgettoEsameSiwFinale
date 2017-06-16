package it.uniroma3.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import it.uniroma3.model.Artista;
import it.uniroma3.model.Opera;
import it.uniroma3.model.Ruolo;
import it.uniroma3.model.Utente;
import it.uniroma3.repository.ArtistaRepository;
import it.uniroma3.repository.OperaRepository;
import it.uniroma3.repository.RuoloRepository;
import it.uniroma3.repository.UtenteRepository;

@Transactional
@Service
public class InitServiceDB {
	
	@Autowired
	private RuoloRepository ruoloRepository;
	
	@Autowired
	private UtenteRepository utenteRepository;
	
	@Autowired
	private ArtistaRepository artistaRepository;
	
	@Autowired
	private OperaRepository operaRepository;
	
	@PostConstruct
	public void init(){
		
		
		
		Ruolo roleUser = new Ruolo();
		roleUser.setNome("ROLE_USER");
		ruoloRepository.save(roleUser);
		
		Ruolo roleAdmin = new Ruolo();
		roleAdmin.setNome("ROLE_ADMIN");
		ruoloRepository.save(roleAdmin);
		
		Utente userAdmin = new Utente();
		userAdmin.setNome("admin");
		userAdmin.setEmail("admin@gmail.com");
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		userAdmin.setPassword(encoder.encode("admin"));
		userAdmin.setEnabled(true);
		List<Ruolo> ruoli = new ArrayList<Ruolo>();
		ruoli.add(roleAdmin);
		ruoli.add(roleUser);
		userAdmin.setRuoli(ruoli);
		utenteRepository.save(userAdmin);
		
		
		Artista picasso = new Artista();
		picasso.setNome("Pablo");
		picasso.setCognome("Picasso");
		picasso.setNazionalita("Spagna");
		picasso.setDataNascita(new Date(25/10/1881));
		picasso.setDataMorte(new Date(8/04/1973));
		artistaRepository.save(picasso);
		Opera opera = new Opera();
		opera.setArtista(picasso);
		opera.setTitolo("gioconda");
		opera.setDataCreazione(1503l);
		opera.setDimensione("77x53");
		opera.setTecnica("Olio su tavola");
		opera.setLink("https://www.google.it/search?q=gioconda+quadro&safe=active&biw=1366&bih=662&tbs=isz:ex,iszw:1024,iszh:768&tbm=isch&source=lnt#q=gioconda+quadro&safe=active&tbm=isch&tbas=0&imgdii=bmP__oQwSZNdPM:&imgrc=bxRUJIyvf5vJBM:");
		operaRepository.save(opera);
		List<Opera> opere = operaRepository.findByArtista(picasso);
		picasso.setOpere(opere);
		
		
		Artista vincent = new Artista();
		vincent.setNome("Vincent");
		vincent.setCognome("van Gogh");
		vincent.setNazionalita("Olanda");
		vincent.setDataNascita(new Date(30/03/1853));
		vincent.setDataMorte(new Date(29/07/1890));
		artistaRepository.save(vincent);
		
		Artista leonardo = new Artista();
		leonardo.setNome("Leonardo");
		leonardo.setCognome("Da Vinci");
		leonardo.setNazionalita("Italia");
		leonardo.setDataNascita(new Date(15/04/1452));
		leonardo.setDataMorte(new Date(2/05/1519));
		artistaRepository.save(leonardo);
		
		Artista claude = new Artista();
		claude.setNome("Claude");
		claude.setCognome("Monet");
		claude.setNazionalita("Francia");
		claude.setDataNascita(new Date(14/11/1840));
		claude.setDataMorte(new Date(5/12/1926));
		artistaRepository.save(claude);
		
		Artista botticelli = new Artista();
		botticelli.setNome("Sandro");
		botticelli.setCognome("Botticelli");
		botticelli.setNazionalita("Italia");
		botticelli.setDataNascita(new Date(1/03/1445));
		botticelli.setDataMorte(new Date(17/5/1510));
		artistaRepository.save(botticelli);
	}

}
