package com.sucky.pr.p05Store;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sucky.pr.p05Store.bo.StoreBO;
import com.sucky.pr.p05Store.model.Store;

@Controller
public class p05StoreController {
	
	@Autowired
	private StoreBO storeBO;
	
	
	@GetMapping("/p05/total/store")
	public String totalStore(Model model) {
		
		List<Store> store = new ArrayList<>();
		
		store = storeBO.getStore();
		
		model.addAttribute("store", store);
		
		return "/p05/total2/storeMain1";

	}
}
