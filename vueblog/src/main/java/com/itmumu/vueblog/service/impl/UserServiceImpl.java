package com.itmumu.vueblog.service.impl;

import com.itmumu.vueblog.entity.User;
import com.itmumu.vueblog.mapper.UserMapper;
import com.itmumu.vueblog.service.UserService;
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
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {

}
