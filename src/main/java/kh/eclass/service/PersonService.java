package kh.eclass.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class PersonService {
	
	@Autowired
	private PersonDAO dao; 
	
	public int update(PersonDTO dto) {
		return dao.update(dto);
	}
	
	public int delete(int seq) {
		return dao.delete(seq);
	}
	
}
