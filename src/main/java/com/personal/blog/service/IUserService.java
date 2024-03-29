package com.personal.blog.service;

import com.personal.blog.po.User;

/**
 * @author YunLung Chia
 * @date 2022/5/23
 */
public interface IUserService {

    User getUserInfoById(Long id);

    void updateUserInfo(User user);
}
