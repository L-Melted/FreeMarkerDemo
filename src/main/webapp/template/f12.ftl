<#--
    macro自定义指令 （宏）
        1.基本使用
          格式：
              <#macro 指令名>
                指令内容
              <#macro>
          使用：
              <@指令名></@指令名>

         2.有参数的自定义指令
           格式：
               <#macro 指令名 参数名1 参数名2>
                   指令内容
               </#macro>
           使用：
               <@指令名 参数名1 = 参数值1 参数名2 = 参数值2></@指令名>
     注：
        1.指令可以被多次使用
        2.自定义指令中可以包含字符串，也可包含内置指令
-->
<#-- 自定义指令 -->
<#macro address>
    © 1999–2015 The FreeMarker Project. All rights reserved.
</#macro>
<#-- 使用自定义指令 -->
<@address></@address>

<#macro address>
    <h3>© 1999–2015 The FreeMarker Project. All rights reserved.</h3>
</#macro>
<@address></@address>
<@address></@address>
<@address></@address>

<#-- 自定义有参数的指令 -->
<#macro queryUserByName uname>
    通过用户名查询用户对象 - ${uname}
</#macro>

<@queryUserByName uname = "admin"></@queryUserByName><br>

<#macro queryUserByName02 uname upwd uphone>
    多条件查询用户对象 - ${uname} - ${upwd} - ${uphone}
</#macro>

<@queryUserByName02 uname = "zhangsan" upwd = "123456" uphone = "123456"></@queryUserByName02>
<hr>

<#-- 自定义指令中包含内置指令 -->
<#macro cfg>
    <#list 1..9 as i>
        <#list 1..i as j>
            ${j} * ${i} = ${j*i} &nbsp;
        </#list><br/>
    </#list>
</#macro>
<@cfg></@cfg>
<hr>

<#macro cfb02 num>
    <#list  1..num as i>
        <#list 1..i as j>
            ${j} * ${i} = ${j*i} &nbsp;
        </#list><br>
    </#list>
</#macro>
<@cfb02 num = 5></@cfb02>

<#macro test>
    这是一段文本！！！
</#macro>
<@test>xxxxxxx</@test>