package kh.eclass.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.eclass.dto.PersonDTO;

@Repository
public class PersonDAO {
	@Autowired
	private SqlSession db;
	
	public int insert(PersonDTO dto) {
		return db.insert("Person.insert",dto);
	}
	public List<PersonDTO> selectAll(){
		return db.selectList("Person.selectAll");
	}
	public int update(PersonDTO dto) {
		return db.update("Person.update",dto);
	}
	public int delete(int seq) {
		return db.delete("Person.delete",seq);
	}
}
