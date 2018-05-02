package other.interceptors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;


public class PrivilegeInterceptor extends HandlerInterceptorAdapter {

	private static final String LOGIN_URL = "/user/login.do";

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		// session中获取用户名信息
		Object obj = session.getAttribute("user");
		boolean ishasprivilege = false;
		if (obj == null || "".equals(obj.toString())) {
			ishasprivilege = false;
		} else {
			//是否拥有权限
			ishasprivilege = this.hasPrivilege(request,session);
		}
		if (!ishasprivilege) {
			response.sendRedirect(request.getSession().getServletContext().getContextPath() + LOGIN_URL);
		}
		return ishasprivilege;

	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {

	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {

	}
	public boolean hasPrivilege(HttpServletRequest request,HttpSession session){
		return true;
	}
}