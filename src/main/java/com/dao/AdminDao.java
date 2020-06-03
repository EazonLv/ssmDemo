package com.dao;

import com.entity.Admin;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("adminDao")
public interface AdminDao {

    /**
     *增加管理员
     */
    public int addAdmin(Admin admin);

    /**
     *更新管理员信息
     */
    public int updateAdminInfo(Admin admin);

    /**
     *删除管理员
     */
    public int deleteAdmin(Admin admin);

    /**
     * 查询所有管理员
     */
    public List<Admin> findAllAdmins();

    /**
     * 按条件精确查找管理员
     * @param admin
     * @return
     */
    public List<Admin> findAdminByCondition(Admin admin);

    /**
     * 模糊查询
     * @param admin
     * @return
     */
    public List<Admin> findAdminByLike(Admin admin);

}

