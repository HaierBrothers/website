package com.bms.service;

import com.bms.entity.Banner;
import com.bms.mapper.BannerMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BannerService {
    @Autowired
    private BannerMapper bannerMapper;

    public List<Banner> getAllBanner() {
        return bannerMapper.selectAll();
    }

    public boolean insertOrUpdate(Banner banner) {
        return bannerMapper.insertOrUpdate(banner)>0;
    }
}
