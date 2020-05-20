package com.entity;

import com.util.VeDate;

public class Album {
    private String albumid = "ALBUM"+VeDate.getStringId();//生成主键编号
    private String albumname;//相册名称
    private String albummemo;//相册备注
    private String userid;//用户id
    private String username;//用户名
    private String albumcover;//相册封面

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

    public String getAlbummemo() {
        return albummemo;
    }

    public void setAlbummemo(String albummemo) {
        this.albummemo = albummemo;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getAlbumcover() {
        return albumcover;
    }

    public void setAlbumcover(String albumcover) {
        this.albumcover = albumcover;
    }

    @Override
    public String toString() {
        return "Album{" +
                "albumid='" + albumid + '\'' +
                ", albumname='" + albumname + '\'' +
                ", albummemo='" + albummemo + '\'' +
                ", userid='" + userid + '\'' +
                ", username='" + username + '\'' +
                ", albumcover='" + albumcover + '\'' +
                '}';
    }
}
