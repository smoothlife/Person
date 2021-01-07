package kh.eclass.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

import kh.eclass.dto.PersonDTO;
import kh.eclass.service.PersonService;

@Controller
public class PersonController {

	@Autowired
	private PersonService service;

	@ResponseBody
	@RequestMapping("update.person")
	public String update(PersonDTO dto) {
		int result = service.update(dto);
		JsonObject obj = new JsonObject();
		obj.addProperty("result", result);
		return new Gson().toJson(obj);
	}

	@ResponseBody
	@RequestMapping("delete.person")
	public String update(int seq) {
		int result = service.delete(seq);
		JsonObject obj = new JsonObject();
		obj.addProperty("result", result);
		return new Gson().toJson(obj);
	}
}
