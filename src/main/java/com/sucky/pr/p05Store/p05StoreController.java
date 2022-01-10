package com.sucky.pr.p05Store;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class p05StoreController {
	
	
	@GetMapping("/p05/total/store")
	public String totalStore() {
		return "/p05/total2/storeMain1";
	}
}
