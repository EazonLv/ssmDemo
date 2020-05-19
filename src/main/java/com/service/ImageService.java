package com.service;

import com.entity.Image;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("imageService")
public interface ImageService {
    /**
     * 增加相片
     */
    public int addImage(Image image);

    /**
     * 更新相片
     */
    public int updateImage(Image image);

    /**
     * 删除相片
     */
    public int deleteImage(Image image);

    /**
     * 查询所有相片
     */
    public List<Image> findAllImage();

    /**
     * 按条件精确查找相片
     * @param image
     * @return
     */
    public List<Image> findImageByCondition(Image image);
}
