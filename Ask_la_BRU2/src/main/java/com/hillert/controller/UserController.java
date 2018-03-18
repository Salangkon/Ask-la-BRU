package com.hillert.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hillert.dao.LoginDao;
import com.hillert.dao.UserDao;
import com.hillert.model.LoginBean;
import com.hillert.model.UserBean;

@Controller
public class UserController {
	@Autowired
	UserDao usertDao;
	@Autowired
	private LoginDao loginDao;

	
	// path Ask_la
	@RequestMapping("/gotoAsk_la")
	public String gotoAsk_la() {	
		
		return "Ask_la";
	}	
	
	// path story
	@RequestMapping("/gotoAsk_story")
	public String gotoAsk_story() {	
		
		return "Ask_story";
	}	
	
	// path Help
	@RequestMapping("/gotoHelp")
	public String gotoHelp() {	
		
		return "help";
	}	
	
	// path Insert
	@RequestMapping("/gotoInsert")
	public String gotoInsert(Model model) {	
		model.addAttribute("messes", "");
		return "insert";
	}
	
	// past Insert_login
	@RequestMapping("/gotoInsert_login")
	public String gotoInsert_login(Model model) {	
		model.addAttribute("messes", "");
		return "insert_login";
	}
	
	//  past welcome
	@RequestMapping("/gotoWelcome")
	public String gotoWelcome(HttpServletRequest request) {	
		List<LoginBean> list = new ArrayList<>();
		list =  loginDao.findByUsername();
		request.getSession().setAttribute("listUser", list);
		return "welcome";
	}
	
	
	//insert
	@RequestMapping("/insert")
	public String insert(Model model,@ModelAttribute("SpringWeb")UserBean user,String password) {	
		LoginBean bean = new LoginBean();
		bean.setLogUsername(user.getUserIdcard());
		bean.setLogPassword(password);
		bean.setLogRole(user.getRoleId());
		try {
			usertDao.insert(user);
			loginDao.insert(bean);
			model.addAttribute("messes", "S");
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			model.addAttribute("messes", "F");
		}
		return "insert";
	}
	
	//OK insert login
	@RequestMapping("/insert_login")
	public String insert_login(Model model,@ModelAttribute("SpringWeb")UserBean user,String password) {	
		LoginBean bean = new LoginBean();
		bean.setLogUsername(user.getUserIdcard());
		bean.setLogPassword(password);
		bean.setLogRole(user.getRoleId());
		try {
			usertDao.insert(user);
			loginDao.insert(bean);
			model.addAttribute("messes", "S");
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			model.addAttribute("messes", "F");
		}
		return "insert_login";
	}
	
	//  path Update
	@RequestMapping( value = "/gotoUpdate" , method = RequestMethod.POST)
	public String gotoUpdate(Model model,String userIdcard) {	
		UserBean bean = new UserBean();
		try {
			bean = usertDao.findByidCard(userIdcard);
			if(bean.getUserIdcard() != null) {
				model.addAttribute("messesUpdate", "");
				model.addAttribute("resultBean", bean);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return "update";
	}
	
	
	@RequestMapping("/update")
	public String update(Model model,@ModelAttribute("SpringWeb")UserBean user) {	
		UserBean bean = new UserBean();
		try {
			usertDao.update(user);
			bean = usertDao.findByidCard(user.getUserIdcard());
			model.addAttribute("resultBean", bean);
			model.addAttribute("messesUpdate", "S");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			model.addAttribute("resultBean", bean);
			model.addAttribute("messesUpdate", "F");
		}
		return "update";
	}
	
	@RequestMapping("/delete")
	public String delete(Model model,String userIdcard,HttpServletRequest request) {	
		List<LoginBean> list = new ArrayList<>();
		try {
			usertDao.delete(userIdcard);
			loginDao.delete(userIdcard);
			list =  loginDao.findByUsername();
			request.getSession().setAttribute("listUser", list);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return "welcome";
	}
	
}
