package com.sucky.pr.p05Store.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.sucky.pr.p05Store.model.Store;

@Repository
public interface StoreDAO {
	
	public List<Store> selectStore();
}
