package com.personal.blog.service.impl;

import com.personal.blog.mapper.UserMapper;
import com.personal.blog.po.User;
import com.personal.blog.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author YunLung Chia
 * @date 2022/5/23
 */
@Service
public class UserService implements IUserService {

    @Autowired
    UserMapper userMapper;

    @Override
    public User getUserInfoById(Long id) {
        User user = userMapper.selectById(id);
        return user;
    }

    @Transactional(rollbackFor = Exception.class)
    @Override
    public void updateUserInfo(User user) {
        userMapper.updataUserInfo(user);
    }


}
