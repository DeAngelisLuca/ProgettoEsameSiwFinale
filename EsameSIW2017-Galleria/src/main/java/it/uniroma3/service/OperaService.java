package it.uniroma3.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.uniroma3.model.Opera;
import it.uniroma3.repository.OperaRepository;

@Service
@Transactional
public class OperaService {
	
	@Autowired
	private OperaRepository operaRepository;
	
	public List<Opera> findAll(){
		return operaRepository.findAll();
	}
	
	public void save(Opera opera){
		operaRepository.save(opera);
	}

}
