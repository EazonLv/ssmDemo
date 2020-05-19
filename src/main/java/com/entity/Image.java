package com.entity;

public class Image {
    private String imageid;
    private String imagememo;
    private String albumid;
    private String albumname;

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

    @Override
    public String toString() {
        return "Image{" +
                "imageid='" + imageid + '\'' +
                ", imagememo='" + imagememo + '\'' +
                ", albumid='" + albumid + '\'' +
                ", albumname='" + albumname + '\'' +
                '}';
    }
}
