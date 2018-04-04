package cn.smbms.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import cn.smbms.pojo.User;
import cn.smbms.tools.Constants;

/**
 * 拦截器
 * 
 * @author MDS
 *
 */
public class SysInterceptor extends HandlerInterceptorAdapter {
	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		String requestURI = request.getRequestURI();
		if (requestURI.indexOf("doLogin") > 0) {
			return true;
		}
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute(Constants.USER_SESSION);
		if (user == null) {
			response.sendRedirect(request.getContextPath() + "/error.jsp");
			return false;
		} else {
			return true;
		}
	}
}
