package com.controller;

import com.entity.Article;
import com.service.ArticleService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/article")
public class ArticleController extends BaseController{
	@Resource
	private ArticleService articleService;

	@RequestMapping("showAllArticles")
    public String showAllArticles(Model model){
	    List<Object> objects = reverseList(articleService.findAllArticle());
	    model.addAttribute("articles",objects);
	    return "article";
    }

	@RequestMapping("/addArticle")
	public String addArticle(Article article){
		//验证登录
		if (this.getSession().getAttribute("userid") == null){
			this.getSession().setAttribute("message","请先登录");
			return "response/returnToLogin";
		}

		String userid = (String) this.getSession().getAttribute("userid");
		article.setUserid(userid);
		if(articleService.addArticle(article)==1){
			System.out.println("添加文章成功");
			this.getSession().setAttribute("message","添加文章成功");
		}
		return ("response/message");
	}

	@RequestMapping("/showUserArticle")
	public String showUserArticle(Article article,Model model){
		//验证登录
		if (this.getSession().getAttribute("userid") == null){
			this.getSession().setAttribute("message","请先登录");
			return "response/returnToLogin";
		}


		String userid = (String) this.getSession().getAttribute("userid");
		article.setUserid(userid);
		article.setArticleid("");
		List<Article> articles= articleService.findArticleByCondition(article);
		List<Object> objects = reverseList(articles);
		if (articles!=null){
			model.addAttribute("articles",objects);
		}
		return "userArticle";
	}

	@RequestMapping("/showUserArticleView")
	public String showArticleUserView(String articleid, Model model){
		//验证登录
		if (this.getSession().getAttribute("userid") == null){
			this.getSession().setAttribute("message","请先登录");
			return "response/returnToLogin";
		}

		Article article1 = new Article();
		article1.setArticleid(articleid);
		List<Article> articleList= articleService.findArticleByCondition(article1);
		Article article2 = articleList.get(0);
		if(article2!=null){
			model.addAttribute("article",article2);
		}
		return "userArticleView";
	}

	@RequestMapping("updateArticle")
    public String updateArticle(Article article){
        //验证登录
        if (this.getSession().getAttribute("userid") == null){
            this.getSession().setAttribute("message","请先登录");
            return "response/returnToLogin";
        }


        if(articleService.updateArticle(article)==1){
            System.out.println("更新文章成功");
            this.getSession().setAttribute("message","更新文章成功");
        }
        else {
            this.getSession().setAttribute("message","更新文章失败");
        }
        return "response/returnToUserArticle";

    }
}
