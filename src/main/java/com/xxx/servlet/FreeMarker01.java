package com.xxx.servlet;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/f01")
public class FreeMarker01 extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //设置数据（给模板设置数据）
        req.setAttribute("msg","hello freemarker!");

        //请求转发跳转到指定的模板页面 template/f01.ftl
        req.getRequestDispatcher("template/f01.ftl").forward(req,resp);

    }
}
