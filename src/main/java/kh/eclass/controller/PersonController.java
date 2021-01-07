package kh.eclass.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kh.eclass.service.PersonService;

@Controller
@RequestMapping("/person")
public class PersonController {
	

	@Autowired
	private PersonService service;
	
	@ResponseBody
	@RequestMapping("update.person")
	public String update(PersonDTO dto) {
		int result = service.update(dto);
		return "";	
	}
	
}
