package com.sucky.pr;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TextTest {
	
	@RequestMapping("/p05/Test")
	public String textTest() {
		return "/p05/Test";
	}
}
