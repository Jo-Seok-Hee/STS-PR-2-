package com.sucky.pr.p05Store.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sucky.pr.p05Store.dao.StoreDAO;
import com.sucky.pr.p05Store.model.Store;

@Service
public class StoreBO {
	
	@Autowired
	private StoreDAO storeDAO;
	
	
	public List<Store> getStore() {
		return storeDAO.selectStore();
	}
}
