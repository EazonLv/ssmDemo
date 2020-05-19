package com.controller;

import com.entity.Image;
import com.service.ImageService;
import com.util.VeDate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.io.File;

@Controller
@RequestMapping("image")
public class ImageController extends BaseController{
    @Resource
    private ImageService imageService;

    @RequestMapping("addImage")
    public String addImage(Image image)
            throws Exception {
        // 保存数据库的路径
        String realPath = this.getSession().getServletContext().getRealPath("/");

        //String imageurl = null;
        // 定义文件保存的本地路径
        //String localPath = "D:\\File\\";
        // 定义 文件名
        String filename = null;
        if (!image.getFile().isEmpty()) {
            // 获得文件类型（可以判断如果不是图片，禁止上传）
            String contentType = image.getFile().getContentType();
            // 获得文件后缀名
            String suffixName = contentType.substring(contentType.indexOf("/") + 1);
            // 得到 文件名
            filename = VeDate.getStringDatex() + "." + suffixName;
            // 文件保存路径
            image.getFile().transferTo(new File(realPath + "/images/"+ filename));
        }
        // 把图片的相对路径保存至数据库
        //sqlPath = "/images/" + filename;
        //System.out.println(sqlPath);
        image.setImageurl(filename);
        image.setAlbumid("ALBUM123");
        image.setAlbumname("默认相册");
        if (imageService.addImage(image)==1){
            this.getSession().setAttribute("message","相片上传成功");
        }
        return "response/returnToAlbum";
    }


}
