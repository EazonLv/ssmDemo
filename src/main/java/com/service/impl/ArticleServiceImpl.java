package com.service.impl;

import com.dao.ArticleDao;
import com.entity.Article;
import com.service.ArticleService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("articleService")
public class ArticleServiceImpl implements ArticleService {
	@Resource
	private ArticleDao articleDao;

	@Override
	public int addArticle(Article article) {
		return 0;
	}

	@Override
	public int updateArticle(Article article) {
		return 0;
	}

	@Override
	public int deleteArticle(Article article) {
		return 0;
	}

	@Override
	public List<Article> findAllArticle() {
		return null;
	}

	@Override
	public List<Article> findArticleByCondition(Article article) {
		return articleDao.findArticleByCondition(article);
	}

	@Override
	public List<String> findWriter(Article article) {
		return articleDao.findWriter(article);
	}
}
