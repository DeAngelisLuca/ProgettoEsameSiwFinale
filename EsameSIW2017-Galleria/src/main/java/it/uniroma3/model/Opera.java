package it.uniroma3.model;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.NumberFormat;

@Entity
public class Opera {
	
	@Id
	@GeneratedValue
	private Long id;
	
	@Size(min=1, message="Campo Obbligatorio!")
	private String titolo;
	
	
	private String link;
	
	@NumberFormat
	private Long dataCreazione;
	
	@Size(min=1, message="Campo Obbligatorio!")
	private String tecnica;
	
	private String dimensione;
	
	@ManyToOne
	private Artista artista;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitolo() {
		return titolo;
	}

	public void setTitolo(String titolo) {
		this.titolo = titolo;
	}

	public Long getDataCreazione() {
		return dataCreazione;
	}

	public void setDataCreazione(Long dataCreazione) {
		this.dataCreazione = dataCreazione;
	}

	public String getTecnica() {
		return tecnica;
	}

	public void setTecnica(String tecnica) {
		this.tecnica = tecnica;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public String getDimensione() {
		return dimensione;
	}

	public void setDimensione(String dimensione) {
		this.dimensione = dimensione;
	}

	public Artista getArtista() {
		return artista;
	}

	public void setArtista(Artista artista) {
		this.artista = artista;
	}
	
	

}
