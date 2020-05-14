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
	public int addArticle(Article article) { return articleDao.addArticle(article);	}

	@Override
	public int updateArticle(Article article) {
		return articleDao.updateArticle(article);
	}

	@Override
	public int deleteArticle(Article article) {
		return articleDao.deleteArticle(article);
	}

	@Override
	public List<Article> findAllArticle() {
		return articleDao.findAllArticle();
	}

	@Override
	public List<Article> findArticleByCondition(Article article) {
		return articleDao.findArticleByCondition(article);
	}

	@Override
	public List<Article> findWriter(Article article) { return articleDao.findWriter(article); }
}
