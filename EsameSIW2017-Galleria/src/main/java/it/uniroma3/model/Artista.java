package it.uniroma3.model;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Past;
import javax.validation.constraints.Size;

@Entity
public class Artista {
	
	@Id
	@GeneratedValue
	private Long id;
	
	@Size(min=1,message="L'artista deve avere un nome!")
	private String nome;
	
	@Size(min=1,message="L'artista deve avere un cognome!")
	private String cognome;
	
	@Size(min=1,message="Campo Obbligatorio")
	private String nazionalita;
	
	@Temporal(TemporalType.DATE)
	@Past
	private Date dataNascita;
	
	@Temporal(TemporalType.DATE)
	private Date dataMorte;
	
	@OneToMany(mappedBy="artista", cascade = CascadeType.REMOVE)
	private List<Opera> opere;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCognome() {
		return cognome;
	}

	public void setCognome(String cognome) {
		this.cognome = cognome;
	}

	public String getNazionalita() {
		return nazionalita;
	}

	public void setNazionalita(String nazionalita) {
		this.nazionalita = nazionalita;
	}

	public Date getDataNascita() {
		return dataNascita;
	}

	public void setDataNascita(Date dataNascita) {
		this.dataNascita = dataNascita;
	}

	public Date getDataMorte() {
		return dataMorte;
	}

	public void setDataMorte(Date dataMorte) {
		this.dataMorte = dataMorte;
	}

	public List<Opera> getOpere() {
		return opere;
	}

	public void setOpere(List<Opera> opere) {
		this.opere = opere;
	}
	
	

}
