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
@WebServlet("/f04")
public class FreeMarker04_Number extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //数值类型
        req.setAttribute("age",18);//数值型
        req.setAttribute("salary",10000);//数值型
        req.setAttribute("avg",0.545);//浮点型

        //请求转发跳转到指定的模板页面 template/f01.ftl
        req.getRequestDispatcher("template/f04.ftl").forward(req,resp);

    }
}
