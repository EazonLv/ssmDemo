package com.controller;

import com.entity.Album;
import com.service.AlbumService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
@RequestMapping("album")
public class AlbumController extends BaseController{
    @Resource
    private AlbumService albumService;

    public String addAlbum(Album album){
        //验证登录
        if (this.getSession().getAttribute("userid") == null){
            this.getSession().setAttribute("message","请先登录");
            return "response/returnToLogin";
        }

        String userid = (String) this.getSession().getAttribute("userid");
        album.setUserid(userid);
        if(albumService.addAlbum(album)==1){
            System.out.println("添加相册成功");
            this.getSession().setAttribute("message","添加相册成功");
        }
        return ("response/returnToAlbum");
    }
}
