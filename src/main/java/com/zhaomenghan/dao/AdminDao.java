package com.zhaomenghan.dao;

import com.zhaomenghan.domain.Admin;
import org.springframework.stereotype.Component;

@Component
public interface AdminDao {
    /**
     * 通过用户名查询管理员用户
     * @param username
     * @return
     */
    Admin findAdminByName(String username);
}
