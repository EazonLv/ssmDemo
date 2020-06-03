package com.controller;

import com.entity.Admin;
import com.service.AdminService;
import com.util.PageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController extends BaseController{
    @Resource
    private AdminService adminService;

    @RequestMapping("/loginPre")
    public String adminLoginPre(){
        return "admin/adminLogin";
    }

    @RequestMapping("/index")
    public String adminIndex(){
        //验证登录
        if (this.getSession().getAttribute("adminid") == null){
            this.getSession().setAttribute("message","请先登录");
            return "response/returnToAdminLogin";
        }

        return "admin/index";
    }

    @RequestMapping("/login")
    public String adminLogin(Admin admin,Model model){
        String adminname = admin.getAdminname();
        String password = admin.getPassword();
        Admin a1 = new Admin();
        a1.setAdminid("");
        a1.setAdminname(adminname);
        List<Admin> adminsList = this.adminService.findAdminByCondition(a1);
        if (adminsList.size() == 0) {
            this.getSession().setAttribute("message","用户名不存在");
            return "response/message";
        } else {
            Admin a2 = adminsList.get(0);
            if (password.equals(a2.getPassword())) {
                this.getSession().setAttribute("adminid", a2.getAdminid());
                this.getSession().setAttribute("adminname", a2.getAdminname());
                this.getSession().setAttribute("admin", a2);
                this.getSession().setAttribute("message","登录成功");
                return "response/returnToAdminIndex";
            } else {
                this.getSession().setAttribute("message", "密码错误");
                return "response/message";
            }
        }
    }

    @RequestMapping("addAdminPre")
    public String addAdminPre(){
        //验证登录
        if (this.getSession().getAttribute("adminid") == null){
            this.getSession().setAttribute("message","请先登录");
            return "response/returnToAdminLogin";
        }

        return "admin/addAdmin";
    }

    @ResponseBody
    @RequestMapping(value = "addAdmin", method = RequestMethod.POST )
    public String addAdmin(Admin admin){
        //验证登录
        if (this.getSession().getAttribute("adminid") == null){
            return "please login";
        }

        Admin a = new Admin();
        a.setAdminname(admin.getAdminname());
        List<Admin> adminsList = this.adminService.findAdminByCondition(a);
        if(adminsList.size() != 0){
            return "failed";
        }else{
            adminService.addAdmin(admin);
            return "success";
        }
    }

    @RequestMapping(value = "getAllAdmin")
    public String getAllAdmin(Model model){
        //验证登录
        if (this.getSession().getAttribute("adminid") == null){
            this.getSession().setAttribute("message","请先登录");
            return "response/returnToAdminLogin";
        }

        model.addAttribute("adminList",adminService.findAllAdmins());
        return "admin/listAdmin";
    }

    // 批量删除数据
    @RequestMapping("deleteAdminByIds")
    public String deleteAdminByIds() {
        //验证登录
        if (this.getSession().getAttribute("adminid") == null){
            this.getSession().setAttribute("message","请先登录");
            return "response/returnToAdminLogin";
        }
        String[] ids = this.getRequest().getParameterValues("adminid");
        if (ids != null) {
            for (String adminid : ids) {
                this.adminService.deleteAdminById(adminid);
            }
        }
        return "redirect:/admin/getAllAdmin";
    }

    // 按主键查询数据
    @RequestMapping("getAdminById")
    public String getAdminById(String adminid) {
        //验证登录
        if (this.getSession().getAttribute("adminid") == null){
            this.getSession().setAttribute("message","请先登录");
            return "response/returnToAdminLogin";
        }
        Admin admin = this.adminService.getAdminById(adminid);
        this.getRequest().setAttribute("admin", admin);
        return "admin/editAdmin";
    }

    //编辑
    @RequestMapping("editAdmin")
    public String editAdmin(String id,Model model){
        //验证登录
        if (this.getSession().getAttribute("adminid") == null){
            this.getSession().setAttribute("message","请先登录");
            return "response/returnToAdminLogin";
        }
        model.addAttribute("admin",adminService.getAdminById(id));
        return "admin/editAdmin";
    }

    //更新
    @ResponseBody
    @RequestMapping("updateAdmin")
    public String updateAdmin(Admin admin){
        //验证登录
        if (this.getSession().getAttribute("adminid") == null){
            this.getSession().setAttribute("message","请先登录");
            return "response/returnToAdminLogin";
        }

        if(admin.getPassword()!=adminService.getAdminById(admin.getAdminid()).getPassword()){
            return "pwd wrong";
        }
        if(adminService.updateAdminInfo(admin) == 1){
            return "success";
        }else {
            return "failed";
        }
    }

    //删除
    @ResponseBody
    @RequestMapping("deleteAdmin")
    public String deleteAdmin(String id){
        //验证登录
        if (this.getSession().getAttribute("adminid") == null){
            this.getSession().setAttribute("message","请先登录");
            return "response/returnToAdminLogin";
        }

        if (adminService.deleteAdminById(id)==1){
            return "success";
        }else {
            return "failed";
        }
    }

    // 按条件查询数据 (模糊查询)
    @RequestMapping("findAdminByCon")
    public String queryAdminByCond(String cond, String name, String number) {
        Admin admin = new Admin();
        admin.setAdminid("");
        if(cond != null){
            if ("adminname".equals(cond)) {
                admin.setAdminname(name);
            }
        }

        List<String> nameList = new ArrayList<String>();
        List<String> valueList = new ArrayList<String>();
        nameList.add(cond);
        valueList.add(name);
        PageHelper.getPage(this.adminService.findAdminByLike(admin), "admin", nameList, valueList, 10, number, this.getRequest(), "query");
        name = null;
        cond = null;
        return "admin/findAdmin";
    }
}
