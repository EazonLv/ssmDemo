package com.service.impl;

import com.dao.AdminDao;
import com.entity.Admin;
import com.service.AdminService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("adminService")
public class AdminServiceImpl implements AdminService {
    @Resource
    private AdminDao adminDao;

    /**
     * 增加管理员
     *
     * @param admin
     */
    @Override
    public int addAdmin(Admin admin) {
        return adminDao.addAdmin(admin);
    }

    /**
     * 更新管理员信息
     *
     * @param admin
     */
    @Override
    public int updateAdminInfo(Admin admin) {
        return adminDao.updateAdminInfo(admin);
    }

    /**
     * 删除管理员
     *
     * @param admin
     */
    @Override
    public int deleteAdmin(Admin admin) {
        return adminDao.deleteAdmin(admin);
    }

    /**
     * 查询所有管理员
     */
    @Override
    public List<Admin> findAllAdmins() {
        return adminDao.findAllAdmins();
    }

    /**
     * 按条件精确查找管理员
     *
     * @param admin
     * @return
     */
    @Override
    public List<Admin> findAdminByCondition(Admin admin) {
        return adminDao.findAdminByCondition(admin);
    }

    /**
     * 根据id删除管理员
     *
     * @param adminid
     * @return
     */
    @Override
    public int deleteAdminById(String adminid) {
        Admin admin =new Admin();
        admin.setAdminid(adminid);
        return adminDao.deleteAdmin(admin);
    }

    /**
     * 按主键查询数据
     *
     * @param adminid
     * @return
     */
    @Override
    public Admin getAdminById(String adminid) {
        Admin admin = new Admin();
        admin.setAdminid(adminid);
        return adminDao.findAdminByCondition(admin).get(0);
    }

    /**
     * 模糊查询
     *
     * @param admin
     * @return
     */
    @Override
    public List<Admin> findAdminByLike(Admin admin) {
        return adminDao.findAdminByLike(admin);
    }
}
