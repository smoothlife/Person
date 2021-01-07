package kh.eclass.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

import kh.eclass.dto.PersonDTO;
import kh.eclass.service.PersonService;

@Controller
@RequestMapping("/person")
public class PersonController {
	
	@Autowired
	private PersonService service;
	
	@RequestMapping("toInput.person")
	public String toInput() {
		return "input";
	}
	@RequestMapping("input.person")
	public String input(PersonDTO dto) {
		service.input(dto);
		System.out.println("이름 : " + dto.getName());
		System.out.println(("메세지 : " + dto.getMessage()));
		return "home";
	}
	
	@RequestMapping("toOutput.person")
	public String toOutput(Model model) {
		//리스트 받고 보내기
		List<PersonDTO> list = service.selectAll();
		
		model.addAttribute("list", list);
		
		return "output";
	}

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
	
	@ExceptionHandler
	public String exception(Exception e) {
		e.printStackTrace();
		return "error";
	}
	
}
