package com.xxx.servlet;

import com.xxx.entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.*;

/**
 *  @author: liman
 *  @Date: 2020/12/18 15:46
 *  @Description: FreeMarker 数据类型
 */
@WebServlet("/f07")
public class FreeMarker07_Sequence extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //序列类型 （数组、List、Set）
        //数组操作
        String[] stars = new String[]{"周杰伦","林俊杰","陈奕迅","五月天"};
        req.setAttribute("stars",stars);

        //List操作
        List<String> citys = Arrays.asList("上海","北京","杭州","深圳");
        req.setAttribute("cityList",citys);

        //JavaBean集合
        List<User> userList = new ArrayList<>();
        userList.add(new User(1,"zhangsan",22));
        userList.add(new User(2,"lisi",18));
        userList.add(new User(3,"wangwu",20));
        req.setAttribute("userList",userList);


        //请求转发跳转到指定的模板页面 template/f01.ftl
        req.getRequestDispatcher("template/f07.ftl").forward(req,resp);

    }
}
