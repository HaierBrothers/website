package com.bms.service;

import com.bms.entity.News;
import com.bms.mapper.NewsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author zhangguodong
 * @date 18/6/30 上午11:42
 */
@Service
public class NewsService {

    @Autowired
    private NewsMapper newsMapper;

    public boolean insertOrUpdate(News news){
        return newsMapper.insertOrUpdate(news)>0;
    }

    public List<News> getAllNews() {
        return newsMapper.selectAll();
    }
}
