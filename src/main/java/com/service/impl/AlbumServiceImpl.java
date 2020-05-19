package com.service.impl;

import com.dao.AlbumDao;
import com.entity.Album;
import com.service.AlbumService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("albumService")
public class AlbumServiceImpl implements AlbumService {
    @Resource
    private AlbumDao albumDao;

    @Override
    public int addAlbum(Album album) {
        return albumDao.addAlbum(album);
    }

    @Override
    public int updateAlbum(Album album) {
        return albumDao.updateAlbum(album);
    }

    @Override
    public int deleteAlbum(Album album) {
        return albumDao.deleteAlbum(album);
    }

    @Override
    public List<Album> findAllAlbum() {
        return albumDao.findAllAlbum();
    }

    @Override
    public List<Album> findAlbumByCondition(Album album) {
        return albumDao.findAlbumByCondition(album);
    }
}
