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
 *  @Description: FreeMarker 数据类型：布尔类型
 */
@WebServlet("/f02")
public class FreeMarker02_Boolean extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //布尔类型
        req.setAttribute("flag",true);

        //请求转发跳转到指定的模板页面 template/f02.ftl
        req.getRequestDispatcher("template/f02.ftl").forward(req,resp);

    }
}
