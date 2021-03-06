package com.bms.service;

import com.bms.entity.Cryptocurrency;
import com.bms.mapper.CryptocurrencyMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CryptocurrencyService {
    @Autowired
    private CryptocurrencyMapper cryptocurrencyMapper;

    public boolean insertOrUpdate(Cryptocurrency cryptocurrency){
        return cryptocurrencyMapper.insertOrUpdate(cryptocurrency)>0;
    }

    public List<Cryptocurrency> getAll() {
        return cryptocurrencyMapper.selectAll();
    }

}
