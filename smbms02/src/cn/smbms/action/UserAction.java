package cn.smbms.action;

import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cn.smbms.pojo.User;
import cn.smbms.service.user.UserService;
import cn.smbms.tools.Constants;

@Controller
public class UserAction {
	@Autowired
	private UserService userService;

	@RequestMapping(value = "/doLogin", method = RequestMethod.POST)
	public String doLogin(@RequestParam String userCode,
			@RequestParam String userPassword, HttpSession session) {
		User user = null;
		try {
			user = userService.getLoginUser(userCode, userPassword);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if(user==null){
			session.setAttribute("loginerror", "登录名或密码错误！");
			return "redirect:/login.jsp";
		}else {
			session.setAttribute(Constants.USER_SESSION, user);
			return "frame";
		}
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session){
		session.removeAttribute(Constants.USER_SESSION);
		return "redirect:/login.jsp";
	}
}
