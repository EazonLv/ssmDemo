package com.test;

import com.dao.ArticleDao;
import com.dao.UserDao;
import com.entity.Article;
import com.entity.User;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;


public class MybatisTest {
	/**
	 * 测试Mybatis
	 *
	 * @throws IOException
	 */
	@Test
	public void mybatisTest() throws IOException {
		//加载配置文件
		InputStream inputStream = Resources.getResourceAsStream("mybatis.xml");
		//创建工厂
		SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		//创建session对象
		SqlSession sqlSession = sqlSessionFactory.openSession();
		//获取代理对象
//		UserDao userDao = sqlSession.getMapper(UserDao.class);
//		//调用对象相关方法
//
//
//		User u = new User();
//		u.setUsername("吕宜聪");
//		List<User> userList = userDao.findUserByCondition(u);
//		System.out.println(userList.get(0));

		User u = new User();
		u.setUsername("吕宜聪");
		u.setPassword("123");
		u.setUserid("A20200511004937285");

		ArticleDao articleDao = sqlSession.getMapper(ArticleDao.class);
		Article article = new Article();
		article.setUserid("A20200511004937285");
		System.out.println(articleDao.findWriter(article));


//		List<User> userList = userDao.findAllUsers();

//		for (User user : userList) {
//			System.out.println(user);
//		}

//		User user = new User();
//		user.setUsername("aaa");
//		user.setPassword("456asd");
//		userDao.addUser(user);
//		System.out.println(userDao.addUser(user));
		//释放资源
		sqlSession.close();
		inputStream.close();
	}
}
