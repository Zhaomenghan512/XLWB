package com.zhaomenghan.service.impl;

import com.zhaomenghan.dao.AdminDao;
import com.zhaomenghan.domain.Admin;
import com.zhaomenghan.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService {
    @Autowired
    private AdminDao dao;

    /**
     * 后台管理用户登录
     * @param admin
     * @return
     */
    @Override
    public Admin login(Admin admin) {
        Admin loginAdmin = dao.findAdminByName(admin.getUsername());
        if (loginAdmin != null) {
            if (admin.getPassword().equals(loginAdmin.getPassword())) {
                return loginAdmin;
            } else {
                return null;
            }
        } else {
            return null;
        }
    }
}
