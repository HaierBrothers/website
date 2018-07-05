package com.bms.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bms.entity.User;
import com.bms.mapper.UserMapper;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.CollectionUtils;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

public class AuthInterceptor implements HandlerInterceptor {
	@Autowired
	private UserMapper userMapper;
	@Override
	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {
		// TODO Auto-generated method stub

	}

	/**
	 * 在处理请求之前所做的操作 --- 这里讲验证微信用户点击链接若数据库中存在该用户则允许请求，若没有则不允许起访问其他页面，直接返回注册页面
	 */
	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object obj) throws Exception {

		// 登陆成功
		HttpSession session = request.getSession();
		Object isLogin = session.getAttribute("ISLOGIN");
		if(null != isLogin && Boolean.valueOf((Boolean) isLogin)){
			return true;
		}
		String userName = request.getParameter("UserName");
		String password = request.getParameter("password");
		String verifyCode = request.getParameter("verifyCode");
		// 验证验证码
		String sessionCode = request.getSession().getAttribute("code").toString();
		if (verifyCode == null && "".equals(verifyCode) && sessionCode == null && "".equals(sessionCode)) {
			return false;
		}
		if (!verifyCode.equalsIgnoreCase(sessionCode)) {
			return false;
		}
		if(StringUtils.isEmpty(userName)){
			return false;
		}
		if(StringUtils.isEmpty(password)){
			return false;
		}
		Example example = new Example(User.class);
		Example.Criteria criteria = example.createCriteria();
		criteria.andEqualTo("userName",userName);
		List<User> selectUser = userMapper.selectByExample(example);
		if(CollectionUtils.isEmpty(selectUser)){
			return false;
		}
		return true;
	}
}
