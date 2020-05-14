package com.service;

import com.entity.Article;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("articleService")
public interface ArticleService {
	/**
	 * 增加文章
	 */
	public int addArticle(Article article);

	/**
	 * 更新文章
	 */
	public int updateArticle(Article article);

	/**
	 * 删除文章
	 */
	public int deleteArticle(Article article);

	/**
	 * 查询所有文章
	 */
	public List<Article> findAllArticle();

	/**
	 * 按条件精确查找文章
	 * @param article
	 * @return
	 */
	public List<Article> findArticleByCondition(Article article);

	/**
	 * 根据userid寻找作者
	 * @param article
	 * @return
	 */
	public List<Article> findWriter(Article article);
}
