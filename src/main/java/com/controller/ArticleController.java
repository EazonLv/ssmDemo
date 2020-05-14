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
	public String addArticle(){
		String title = this.getRequest().getParameter("a_title");
		String content = this.getRequest().getParameter("a_content");
		String userid = (String) this.getSession().getAttribute("userid");

		Article article = new Article();
		article.setUserid(userid);
		article.setTitle(title);
		article.setContent(content);
		if (articleService.addArticle(article) == 1){
			System.out.println("成功了");
		}
		return ("response/return");
	}
}
