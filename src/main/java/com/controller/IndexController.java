package com.controller;

import com.entity.Album;
import com.entity.Article;
import com.entity.Message;
import com.service.AlbumService;
import com.service.ArticleService;
import com.service.MessageService;
import com.util.ArticleAndWriter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/index")
public class IndexController extends BaseController{

	@Resource
	private ArticleService articleService;
	@Resource
	private MessageService messageService;
	@Resource
	private AlbumService albumService;


	@RequestMapping("/login")
	public String indexLogin(){return "userLogin";}

	@RequestMapping("/home")
	public String indexHome(Model model){
		List<ArticleAndWriter> articleAndWriters =  reverseAAW(articleSummary());
		model.addAttribute("articleAndWriters",articleAndWriters);
		List<Message> messages = reverseMessageList(messageService.findAllMessage());
		model.addAttribute("messages",messages);
		List<Object> objects1 = reverseList(albumService.findAllAlbum());
		model.addAttribute("albumList",objects1);
		return "userHome";
	}

	@RequestMapping("/register")
	public String indexRegister(){return "userRegister";}


	@RequestMapping("/showMessage")
	public String indexToMessage(){return "redirect:/message/showAllMessages";}

	@RequestMapping("/addArticle")
	public String indexToAddArticle(){if (isNotLogin()){return "response/returnToLogin";}return "addArticle";}

	@RequestMapping("/addMessage")
	public String indexToAddMessage(){if (isNotLogin()){return "response/returnToLogin";}return "addMessage";}

	@RequestMapping("/addImage")
	public String indexToAddImage(Album album,Model model){
		if (isNotLogin()){return "response/returnToLogin";}

		model.addAttribute("albumid",album.getAlbumid());
		model.addAttribute("albumname",album.getAlbumname());


		return "addImage"; }

	@RequestMapping("/addAlbum")
	public String indexToAddAlbum(){if (isNotLogin()){return "response/returnToLogin";}return "addAlbum"; }


	/**
	 * 判断是否登陆
	 */
	public Boolean isNotLogin(){
		//验证登录
		if (this.getSession().getAttribute("userid") == null){
			this.getSession().setAttribute("message","请先登录");
			return true;
		}else{
			return false;
		}
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

	public List<Message> reverseMessageList(List<Message> messageList){
		List<Message> messageList1 = new ArrayList<Message>();
		for(int i=0;i<messageList.size();i++){
			messageList1.add(messageList.get(messageList.size()-i-1));
		}
		return messageList1;
	}


}
