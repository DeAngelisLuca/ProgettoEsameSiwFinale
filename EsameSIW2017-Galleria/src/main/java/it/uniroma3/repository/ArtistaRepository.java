package it.uniroma3.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import it.uniroma3.model.Artista;

public interface ArtistaRepository extends JpaRepository<Artista, Long>{

	Artista findByNome(String nome);

}
