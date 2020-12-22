package com.xxx.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;

/**
 * @author: liman
 * @Date: 2020/12/18 15:46
 * @Description: FreeMarker 数据类型：Hash类型--Map操作
 */
@WebServlet("/f08")
public class FreeMarker08_Hash extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //Map操作
        Map<String, String> cityMap = new HashMap<>();
        cityMap.put("sh", "上海");
        cityMap.put("bj", "北京");
        cityMap.put("sz", "深圳");
        req.setAttribute("cityMap", cityMap);

        //请求转发跳转到指定的模板页面 template/f01.ftl
        req.getRequestDispatcher("template/f08.ftl").forward(req, resp);

    }
}
