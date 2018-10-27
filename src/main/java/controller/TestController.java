package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import model.test.TestBean;
import model.test.TestService;

@Controller
public class TestController {
	@Autowired
	private TestService Service;


	@RequestMapping("/test.controller")
	public String method(TestBean bean, BindingResult bindingResult, String test, Model model, String id) {
		Map<String, String> errors = new HashMap<>();
		model.addAttribute("errors", errors);
		
		
		if ("Insert".equals(test)) {
			TestBean result = Service.insert(bean);
			if (result == null) {
				errors.put("action", "Insert fail");
				return "test.errors";
			} else {
				model.addAttribute("insert", result);
			}
		}
		else if("Select".equals(test)) {
			List<TestBean> result = Service.select(bean);
			model.addAttribute("select", result);
		}
		return "test.errors";
	}
}
