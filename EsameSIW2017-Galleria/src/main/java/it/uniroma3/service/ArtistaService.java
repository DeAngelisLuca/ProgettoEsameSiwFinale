package it.uniroma3.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.uniroma3.model.Artista;
import it.uniroma3.model.Opera;
import it.uniroma3.repository.ArtistaRepository;
import it.uniroma3.repository.OperaRepository;

@Service
@Transactional
public class ArtistaService {
	
	@Autowired
	private ArtistaRepository artistaRepository;
	@Autowired
	private OperaRepository operaRepository;
	
	public List<Artista> findAll(){
		return artistaRepository.findAll();
	}
	
	public Artista findOne(Long id){
		return artistaRepository.findOne(id);
	}
	
	public Artista findOneWithNome(String nome){
		Artista artist = artistaRepository.findByNome(nome);
		return findOne(artist.getId());
	}
	
	public void save(Artista artista){
		artistaRepository.save(artista);
	}
	
	public void delete(Long id){
		artistaRepository.delete(id);
	}

	public Artista findOneWithOpere(Long id) {
		Artista artista = findOne(id);
		List<Opera> opere = operaRepository.findByArtista(artista);
		artista.setOpere(opere);
		return artista;
	}

}
