package other.system.exception.handler;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

public class MyExceptionHandler implements HandlerExceptionResolver {

	public ModelAndView resolveException(HttpServletRequest request, HttpServletResponse response, Object arg2, Exception e) {
		// TODO Auto-generated method stub
		ModelAndView mv=new ModelAndView();
		
		if (e instanceof SQLException) {
			if (e.getMessage().contains("Could not get JDBC Connection")) {
				mv.addObject("errormessage", "连接数据库失败，请检查网络或数据库服务器");
				mv.addObject("errormessage", "连接数据库失败，请检查网络或数据库服务器");
			} else {
				mv.addObject("errormessage", "数据库错误，详细请参考：" + e.getMessage());
			}

		} else if (e instanceof NullPointerException) {
			mv.addObject("errormessage", "空指针异常"+ e.getMessage());
		} else {
			if(e.getMessage().contains("Network Adapter could not establish the connection")){
				if(e.getMessage().contains("Could not get JDBC Connection")){
					mv.addObject("errormessage", "服务器连接数据库失败，请检查服务器网络或数据库服务器运行情况");
				}else{
					mv.addObject("errormessage", "服务器网络异常，请检查服务器网络连接");
				}
				
			}else{
				mv.addObject("errormessage", "未知异常，详细请参考：" + e.getMessage());
			}
		}
		mv.setViewName("system/exception");
		return mv;

	}

}
