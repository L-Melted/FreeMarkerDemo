package com.xxx.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 *  @author: liman
 *  @Date: 2020/12/18 15:46
 *  @Description: FreeMarker 数据类型
 */
@WebServlet("/f05")
public class FreeMarker05_String extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //字符串类型
        req.setAttribute("msg","Hello");
        req.setAttribute("msg2","freemarker");

        //请求转发跳转到指定的模板页面 template/f01.ftl
        req.getRequestDispatcher("template/f05.ftl").forward(req,resp);

    }
}
