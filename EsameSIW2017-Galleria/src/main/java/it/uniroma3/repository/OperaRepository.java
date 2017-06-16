package it.uniroma3.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import it.uniroma3.model.Artista;
import it.uniroma3.model.Opera;

public interface OperaRepository extends JpaRepository<Opera, Long>{

	List<Opera> findByArtista(Artista artista);

}
