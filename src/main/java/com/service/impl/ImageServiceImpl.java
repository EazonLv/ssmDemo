package com.service.impl;

import com.dao.ImageDao;
import com.entity.Image;
import com.service.ImageService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service("imageService")
public class ImageServiceImpl implements ImageService {
    @Resource
    private ImageDao imageDao;

    @Override
    public int addImage(Image image) {
        return imageDao.addImage(image);
    }

    @Override
    public int updateImage(Image image) {
        return imageDao.updateImage(image);
    }

    @Override
    public int deleteImage(Image image) {
        return imageDao.deleteImage(image);
    }

    @Override
    public List<Image> findAllImage() {
        return imageDao.findAllImage();
    }

    @Override
    public List<Image> findImageByCondition(Image image) {
        return imageDao.findImageByCondition(image);
    }
}
