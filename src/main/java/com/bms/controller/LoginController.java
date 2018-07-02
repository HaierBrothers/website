package com.bms.controller;

import com.bms.entity.User;
import com.bms.mapper.UserMapper;
import com.bms.util.BllConstantEnum;
import com.bms.util.CodeUtil;
import com.bms.util.RestModel;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.image.RenderedImage;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@Controller
public class LoginController {

    @Autowired
    private UserMapper userMapper;

    /**
     *  页面跳转
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/toLogin",method = RequestMethod.GET)
    public String toLogin(HttpServletRequest request, HttpServletResponse response){
        return "login/login";
    }

    /**
     *  验证码生成
     * @param request
     * @param response
     */
    @RequestMapping(value = "/verifyCode",method = RequestMethod.GET)
    public void verifyCode(HttpServletRequest request, HttpServletResponse response){
        // 调用工具类生成的验证码和验证码图片
        Map<String, Object> codeMap = CodeUtil.generateCodeAndPic();
        // 将四位数字的验证码保存到Session中。
        HttpSession session = request.getSession();
        session.setAttribute("code", codeMap.get("code").toString());
        // 禁止图像缓存。
        response.setHeader("Pragma", "no-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expires", -1);
        response.setContentType("image/jpeg");
        // 将图像输出到Servlet输出流中。
        ServletOutputStream sos;
        try {
            sos = response.getOutputStream();
            ImageIO.write((RenderedImage) codeMap.get("codePic"), "jpeg", sos);
            sos.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     *  进行页面登陆
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/login",method = RequestMethod.POST,produces = "application/json; charset=utf-8")
    @ResponseBody
    public RestModel login(HttpServletRequest request, HttpServletResponse response){
        String userName = request.getParameter("UserName");
        String password = request.getParameter("password");
        String verifyCode = request.getParameter("verifyCode");
        // 验证验证码
        String sessionCode = request.getSession().getAttribute("code").toString();
        if (verifyCode == null && "".equals(verifyCode) && sessionCode == null && "".equals(sessionCode)) {
            return RestModel.getRestModel(BllConstantEnum.RESCODE_10,"请输入验证码");
        }
        if (!verifyCode.equalsIgnoreCase(sessionCode)) {
            return RestModel.getRestModel(BllConstantEnum.RESCODE_10,"验证码错误");
        }
        if(StringUtils.isEmpty(userName)){
            return RestModel.getRestModel(BllConstantEnum.RESCODE_10,"请输入用户名");
        }
        if(StringUtils.isEmpty(password)){
            return RestModel.getRestModel(BllConstantEnum.RESCODE_10,"请输入密码");
        }
        User user = new User();
        user.setAccount(userName);
        List<User> selectUser = userMapper.select(user);
        if(CollectionUtils.isEmpty(selectUser)){
            return RestModel.getRestModel(BllConstantEnum.RESCODE_10,"登陆失败，没有该用户");
        }
        return RestModel.getRestModel(BllConstantEnum.RESCODE_0,"登陆成功");
    }



}
