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
		
		picasso.setDataNascita(new Date(1881/10/25));
		picasso.setDataMorte(new Date(4/8/1973));
		artistaRepository.save(picasso);
		Opera opera = new Opera();
		opera.setArtista(picasso);
		opera.setTitolo("Guernica");
		opera.setDataCreazione(1937l);
		opera.setDimensione("350x77");
		opera.setTecnica("Olio su tela");
		opera.setLink("http://i65.tinypic.com/15e729u.jpg");
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
		
		Opera opera1 = new Opera();
		opera1.setArtista(vincent);
		opera1.setTitolo("Girasoli");
		opera1.setDataCreazione(1888l);
		opera1.setDimensione("95x73");
		opera1.setTecnica("Olio su tela");
		opera1.setLink("http://i63.tinypic.com/294gkrc.jpg");
		operaRepository.save(opera1);
		List<Opera> opere1 = operaRepository.findByArtista(vincent);
		vincent.setOpere(opere1);
		
		Artista leonardo = new Artista();
		leonardo.setNome("Leonardo");
		leonardo.setCognome("Da Vinci");
		leonardo.setNazionalita("Italia");
		leonardo.setDataNascita(new Date(15/04/1452));
		leonardo.setDataMorte(new Date(2/05/1519));
		artistaRepository.save(leonardo);
		
		Opera opera2 = new Opera();
		opera2.setArtista(leonardo);
		opera2.setTitolo("Dama con l'ermellino");
		opera2.setDataCreazione(1490l);
		opera2.setDimensione("54x39");
		opera2.setTecnica("Olio su tavola");
		opera2.setLink("http://i67.tinypic.com/291iz5v.jpg");
		operaRepository.save(opera2);
		List<Opera> opere2 = operaRepository.findByArtista(leonardo);
		leonardo.setOpere(opere2);
		
		Artista claude = new Artista();
		claude.setNome("Claude");
		claude.setCognome("Monet");
		claude.setNazionalita("Francia");
		claude.setDataNascita(new Date(14/11/1840));
		claude.setDataMorte(new Date(5/12/1926));
		artistaRepository.save(claude);
		
		Opera opera3 = new Opera();
		opera3.setArtista(claude);
		opera3.setTitolo("La passeggiata");
		opera3.setDataCreazione(1875l);
		opera3.setDimensione("100x81");
		opera3.setTecnica("Olio su tela");
		opera3.setLink("http://i67.tinypic.com/2d6v143.jpg");
		operaRepository.save(opera3);
		List<Opera> opere3 = operaRepository.findByArtista(claude);
		claude.setOpere(opere3);
		
		Artista botticelli = new Artista();
		botticelli.setNome("Sandro");
		botticelli.setCognome("Botticelli");
		botticelli.setNazionalita("Italia");
		botticelli.setDataNascita(new Date(1/03/1445));
		botticelli.setDataMorte(new Date(17/5/1510));
		artistaRepository.save(botticelli);
	}

}
