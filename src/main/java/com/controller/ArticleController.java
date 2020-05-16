package com.controller;

import com.entity.Article;
import com.service.ArticleService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
@RequestMapping("/article")
public class ArticleController extends BaseController{
	@Resource
	private ArticleService articleService;

	@RequestMapping("/addArticle")
	public String addArticle(Article article){
		String userid = (String) this.getSession().getAttribute("userid");
		article.setUserid(userid);
		if(articleService.addArticle(article)==1){
			System.out.println("添加文章成功");
		}
		return ("redirect:/index/home");
	}
}
