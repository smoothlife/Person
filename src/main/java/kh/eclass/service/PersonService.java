
package kh.eclass.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.eclass.dao.PersonDAO;
import kh.eclass.dto.PersonDTO;

@Service
public class PersonService {
	
	@Autowired
	private PersonDAO dao; 

	public int input(PersonDTO dto) {
		return dao.insert(dto);
	}
	
	public List<PersonDTO> selectAll(){
		return dao.selectAll();
	}
	public int update(PersonDTO dto) {
		return dao.update(dto);
	}
	
	public int delete(int seq) {
		return dao.delete(seq);
	}

}
