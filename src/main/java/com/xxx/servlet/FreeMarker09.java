package com.xxx.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 *  @author: liman
 *  @Date: 2020/12/22 15:47
 *  @Description: FreeMarker 常见指令 ：assign自定义变量指令
 */
@WebServlet("/f09")
public class FreeMarker09 extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //请求转发跳转到指定的模板页面 template/f01.ftl
        req.getRequestDispatcher("template/f09.ftl").forward(req, resp);

    }
}
