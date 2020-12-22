<#--
    assign自定义变量指令
        语法：
            <#assign 变量名=值>
            <#assign 变量名=值 变量名=值> (定义多个变量)
-->

<h5>assign自定义变量指令</h5>
<#-- 定义单个变量 -->
<#assign str="hello">
${str}<br/>
<#-- 定义多个变量 -->
<#assign num=1 names=["zhangsan","lisi","wangwu"]>
${num} -- ${names?join(",")}