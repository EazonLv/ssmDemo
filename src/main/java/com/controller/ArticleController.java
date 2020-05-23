package com.controller;

import com.entity.Article;
import com.service.ArticleService;
import com.util.ArticleAndWriter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/article")
public class ArticleController extends BaseController{
	@Resource
	private ArticleService articleService;

	@RequestMapping("showAllArticles")
    public String showAllArticles(Model model){
		List<ArticleAndWriter> articleAndWriters =  reverseAAW(articleSummary());
		model.addAttribute("articleAndWriters",articleAndWriters);
	    return "article";
    }
	/**
	 * 首页方法：通过userid查找用户名并列在articleAndWriters表中
	 * @return List<ArticleAndWriter> 包含title、content、writer
	 */
	public List<ArticleAndWriter> articleSummary(){
		List<Article> articleList = articleService.findAllArticle();
		List<String> username = new ArrayList<String>();

		for(int i=0;i<articleList.size();i++){
			Article article = new Article();
			article.setUserid(articleList.get(i).getUserid());
			Article article2 = (Article) articleService.findWriter(article).get(0);
			username.add(article2.getUser().getUsername());
		}
		List<ArticleAndWriter> articleAndWriters = new ArrayList<ArticleAndWriter>();
		for(int i=0;i<articleList.size();i++){
			ArticleAndWriter aaw = new ArticleAndWriter(articleList.get(i).getTitle(),articleList.get(i).getContent(),articleList.get(i).getArticleid(),username.get(i));
			articleAndWriters.add(aaw);
		}
		return articleAndWriters;
	}

	/**
	 * 实现List<ArticleAndWriter>表的逆序（使文章能反向排列，即最新更新的文章在上面）
	 */
	public List<ArticleAndWriter> reverseAAW(List<ArticleAndWriter> articleAndWriters){
		List<ArticleAndWriter> articleAndWriters1 = new ArrayList<ArticleAndWriter>();
		for (int i=0;i<articleAndWriters.size();i++){
			articleAndWriters1.add(articleAndWriters.get(articleAndWriters.size()-i-1));
		}
		return articleAndWriters1;
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

	@RequestMapping("/editArticle")
	public String showArticleUserView(Article article, Model model){
		//验证登录
		if (this.getSession().getAttribute("userid") == null){
			this.getSession().setAttribute("message","请先登录");
			return "response/returnToLogin";
		}

		List<Article> articleList= articleService.findArticleByCondition(article);
		Article article2 = articleList.get(0);

		if(article2!=null){
			model.addAttribute("article",article2);
		}
		return "editArticleView";
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

    @RequestMapping("showArticleDetail")
	public String showArticleDetail(Article article,Model model){
		List<Article> articleList= articleService.findArticleByCondition(article);
		Article article1 = articleList.get(0);

		Article article2 = new Article();
		article2.setUserid(articleList.get(0).getUserid());
		Article article3 = (Article) articleService.findWriter(article2).get(0);
		String username = article3.getUser().getUsername();
		if(article1!=null){
			model.addAttribute("article",article1);
			model.addAttribute("writer",username);
		}
		return "articleDetail";
	}

	@RequestMapping("deleteArticle")
	public String deleteArticle(Article article){
		//验证登录
		if (this.getSession().getAttribute("userid") == null){
			this.getSession().setAttribute("message","请先登录");
			return "response/returnToLogin";
		}

		if(articleService.deleteArticle(article)==1){
			this.getSession().setAttribute("message","删除相册成功");
		}else {
			this.getSession().setAttribute("message","删除相册失败");
		}
		return "response/returnToUserArticle";

	}

}
