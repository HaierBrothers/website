package com.bms.service;

import com.bms.entity.Banner;
import com.bms.mapper.BannerMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author zhangguodong
 * @date 18/6/30 上午11:11
 */
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
