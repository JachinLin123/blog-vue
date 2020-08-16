package com.itmumu.vueblog.service.impl;

import com.itmumu.vueblog.entity.Blog;
import com.itmumu.vueblog.mapper.BlogMapper;
import com.itmumu.vueblog.service.BlogService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author JachinLin
 * @since 2020-08-05
 */
@Service
public class BlogServiceImpl extends ServiceImpl<BlogMapper, Blog> implements BlogService {

}
