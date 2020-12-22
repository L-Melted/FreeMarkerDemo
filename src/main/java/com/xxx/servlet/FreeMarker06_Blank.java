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
 *  @Description: FreeMarker 数据类型：空值类型
 */
@WebServlet("/f06")
public class FreeMarker06_Blank extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //空值类型
        req.setAttribute("str1",null);
        req.setAttribute("str2","");

        //请求转发跳转到指定的模板页面 template/f01.ftl
        req.getRequestDispatcher("template/f06.ftl").forward(req,resp);

    }
}
