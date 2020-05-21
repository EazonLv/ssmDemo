package com.controller;

import com.entity.Image;
import com.service.ImageService;
import com.util.VeDate;
import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.io.File;
import java.util.List;

@Controller
@RequestMapping("/image")
public class ImageController extends BaseController{
    @Resource
    private ImageService imageService;

    @RequestMapping("/addImage")
    public String addImage(Image image) throws Exception {
        //验证登录
        if (this.getSession().getAttribute("userid") == null){
            this.getSession().setAttribute("message","请先登录");
            return "response/returnToLogin";
        }

        // 保存数据库的路径
        String realPath = this.getSession().getServletContext().getRealPath("/");

        String filename = null;
        //注意：保存文件分别保存到了工程目录和tomcat服务器上面
        if (!image.getFile().isEmpty()) {
            // 获得文件类型（可以判断如果不是图片，禁止上传）
            String contentType = image.getFile().getContentType();
            // 获得文件后缀名
            String suffixName = contentType.substring(contentType.indexOf("/") + 1);
            // 得到 文件名
            filename = "IMG"+VeDate.getStringDatex() + "." + suffixName;
            // 文件保存路径
            File file1 = new File(realPath + "/images/"+ filename);
            image.getFile().transferTo(file1);
            // 复制到工程目录
            File file2 = new File("D:\\IdeaProjects\\ssmDemo\\src\\main\\webapp\\images\\"+filename);
            FileUtils.copyFile(file1, file2);
        }
        // 把图片的相对路径保存至数据库
        //sqlPath = "/images/" + filename;
        //System.out.println(sqlPath);
        image.setImageurl(filename);
        if (imageService.addImage(image)==1){
            this.getSession().setAttribute("message","相片上传成功");
        }
        return "response/returnToUserAlbum";
    }

    @RequestMapping("/showAlbumImage")
    public String showAlbumImage(Image image, Model model){
        //验证登录
        if (this.getSession().getAttribute("userid") == null){
            this.getSession().setAttribute("message","请先登录");
            return "response/returnToLogin";
        }

        image.setImageid("");
        model.addAttribute("albumname",image.getAlbumname());
        model.addAttribute("albumid",image.getAlbumid());
        image.setAlbumname("");
        List<Image> imageList = imageService.findImageByCondition(image);


        System.out.println(imageList);
        List<Object> objects = reverseList(imageList);
        model.addAttribute("imageList",objects);


        return "userAlbumImage";

    }

    @RequestMapping("/showImageDetail")
    public String showImageDetail(Image image, Model model){
        if(imageService.findImageByCondition(image)!=null){
            model.addAttribute("image",imageService.findImageByCondition(image).get(0));
        }
        return ("imageDetail");
    }


}
