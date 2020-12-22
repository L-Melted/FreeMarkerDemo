<#--
    数据类型：日期类型
        在freemarker中日期类型不能直接输出：如果输出要先转成日期型或字符串
        1.年月日   ？date
        2.时分秒   ？time
        3.年月日时分秒 ？datetime
        4.指定格式   ？string （"自定义格式"）
                    y: 年 M:月 d:日
                    H: 时 m:分 s:秒
-->

<#-- 输出日期格式 -->
    ${createDate?date} <br/>
<#-- 输出时间格式 -->
    ${createDate?time}<br/>
<#-- 输出日期时间格式 -->
    ${createDate?datetime} <br/>
<#-- 输出格式化日期格式 -->
    ${createDate?string("yyyy年MM月dd日 HH:mm:ss")}<br/>