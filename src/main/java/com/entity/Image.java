package com.entity;

import com.util.VeDate;
import org.springframework.web.multipart.MultipartFile;

public class Image {
    private String imageid = "IMG"+VeDate.getStringId();
    private String imagememo;
    private String imageurl;
    private String albumid;
    private String albumname;
    //辅助图片上传属性
    private MultipartFile file;

    public String getImageid() {
        return imageid;
    }

    public void setImageid(String imageid) {
        this.imageid = imageid;
    }

    public String getImagememo() {
        return imagememo;
    }

    public void setImagememo(String imagememo) {
        this.imagememo = imagememo;
    }

    public String getAlbumid() {
        return albumid;
    }

    public void setAlbumid(String albumid) {
        this.albumid = albumid;
    }

    public String getAlbumname() {
        return albumname;
    }

    public void setAlbumname(String albumname) {
        this.albumname = albumname;
    }

    public String getImageurl() {
        return imageurl;
    }

    public void setImageurl(String imageurl) {
        this.imageurl = imageurl;
    }

    public MultipartFile getFile() {
        return file;
    }

    public void setFile(MultipartFile file) {
        this.file = file;
    }

    @Override
    public String toString() {
        return "Image{" +
                "imageid='" + imageid + '\'' +
                ", imagememo='" + imagememo + '\'' +
                ", imageurl='" + imageurl + '\'' +
                ", albumid='" + albumid + '\'' +
                ", albumname='" + albumname + '\'' +
                ", file=" + file +
                '}';
    }
}
