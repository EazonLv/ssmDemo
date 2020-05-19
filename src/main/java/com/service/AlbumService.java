package com.service;

import com.entity.Album;
import org.springframework.stereotype.Service;

import java.util.List;


@Service("albumService")
public interface AlbumService {
    /**
     * 增加相册
     */
    public int addAlbum(Album album);

    /**
     * 更新相册
     */
    public int updateAlbum(Album album);

    /**
     * 删除相册
     */
    public int deleteAlbum(Album album);

    /**
     * 查询所有相册
     */
    public List<Album> findAllAlbum();

    /**
     * 按条件精确查找相册
     * @param album
     * @return
     */
    public List<Album> findAlbumByCondition(Album album);
}
