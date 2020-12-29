<#--
list指令
    格式1：
        <#list sequence as item></#list>
    格式2：
        <#list sequence as item>
            <#else>
            当没有选项时，执行else指令
        </#list>
注：
    1.else部分是可选的
    2.sequence:想要迭代的项，可以是序列或集合的表达式
    3.item:循环变量的名称
    4.当没有迭代项时，才使用else指令，可以输出一些特殊的内容而不只是空在那里
-->
<#assign users = ["张三","李四","王五"]>
<#-- 遍历序列 -->
<#list users as user>
    ${user}
</#list>
<br/>

<#-- 判断数据不为空，再执行遍历 （如果序列不存在，直接遍历会报错）-->
<#if users2??>
    <#list users2 as user>
        ${user}
    </#list>
</#if>

<#-- 当序列没有数据项时，使用默认信息 -->
<#assign users3 = []>
<#list users3 as user>
    ${user}
<#else>
    用户数据不存在
</#list>

<#assign users3 = ['a']>
<#list users3 as user>
    ${user}
    <#else>
    用户数据不存在
</#list>