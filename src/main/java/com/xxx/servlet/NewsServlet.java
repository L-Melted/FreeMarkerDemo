package com.xxx.servlet;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 *  @author: liman
 *  @Date: 2020/12/29 15:47
 *  @Description: FreeMarker 常见指令 ：macro指令
 */
@WebServlet("/newsServlet")
public class NewsServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 实例化模板对象
        Configuration configuration = new Configuration();
        // 设置加载模板的上下文 以及加载模板的路径 （模板存放路径）
        configuration.setServletContextForTemplateLoading(getServletContext(),"/template");
        // 设置模板的编码格式
        configuration.setDefaultEncoding("UTF-8");
        // 加载模板文件 获取模板对象
        Template template = configuration.getTemplate("news.ftl");

        // 设置数据模型
        Map<String, Object> map = new HashMap<>();
        map.put("title","蒙古国捐赠3万只羊分发完成，附分发明细图");
        map.put("source","澎湃新闻");
        map.put("pubTime","2020-12-29 14:43");
        map.put("content","湖北日报12月29日消息，12月28日，湖北省慈善总会按照有关要求和程序，对蒙古国捐赠羊的分发情况进行公示。社会各界持续关注的捐赠羊，已全部分享给省内新冠肺炎医疗救治定点医院一线医务工作者、全国各地援鄂医疗队以及在我省新冠肺炎疫情防控中因公殉职人员的家属。");

        // 获取项目的根目录
        String basePath = req.getServletContext().getRealPath("/");
        // 设置html的存放路径
        File htmlFile = new File(basePath + "/html");
        // 判断文件（目录）是否存在
        if(!htmlFile.exists()){
            // 如果文件目录不存在，则新建文件目录
            htmlFile.mkdirs();
        }
        // 得到生成的文件名 （生成随机不重复的文件名）
        String fileName = System.currentTimeMillis() + ".html";
        // 创建html文件
        File file = new File(htmlFile, fileName);
        // 获取文件输出流
        FileWriter writer = new FileWriter(file);

        // 生成html(将数据模型填充到模板中)
        try {
            template.process(map,writer);
        } catch (TemplateException e) {
            e.printStackTrace();
        } finally {
            // 关闭资源
            writer.flush();
            writer.close();
        }


    }
}
