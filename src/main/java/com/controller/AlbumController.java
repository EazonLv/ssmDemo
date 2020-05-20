package com.controller;

import com.entity.Album;
import com.service.AlbumService;
import com.util.VeDate;
import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.io.File;
import java.io.IOException;

@Controller
@RequestMapping("album")
public class AlbumController extends BaseController{
    @Resource
    private AlbumService albumService;

    @RequestMapping("/addAlbum")
    public String addAlbum(Album album) throws IOException {
        //验证登录
        if (this.getSession().getAttribute("userid") == null){
            this.getSession().setAttribute("message","请先登录");
            return "response/returnToLogin";
        }

        // 保存数据库的路径
        String realPath = this.getSession().getServletContext().getRealPath("/");

        String filename = null;
        //注意：保存文件分别保存到了工程目录和tomcat服务器上面
        if (!album.getFile().isEmpty()) {
            // 获得文件类型（可以判断如果不是图片，禁止上传）
            String contentType = album.getFile().getContentType();
            // 获得文件后缀名
            String suffixName = contentType.substring(contentType.indexOf("/") + 1);
            // 得到 文件名
            filename = "ALBUMCOVER"+VeDate.getStringDatex() + "." + suffixName;
            // 文件保存路径
            File file1 = new File(realPath + "/images/"+ filename);
            album.getFile().transferTo(file1);
            // 复制到工程目录
            File file2 = new File("D:\\IdeaProjects\\ssmDemo\\src\\main\\webapp\\images\\"+filename);
            FileUtils.copyFile(file1, file2);
        }
        album.setAlbumcover(filename);
        if(albumService.addAlbum(album)==1){
            System.out.println("添加相册成功");
            this.getSession().setAttribute("message","添加相册成功");
        }
        return ("response/returnToUserAlbum");
    }
}
