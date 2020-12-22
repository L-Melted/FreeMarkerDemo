<#--
    if,else,elseif逻辑判断指令
       格式：
           <#if condition>
           ...
           <#elseif condition2>
           ...
           <#elseif condition3>
           ...
           <#else>
           ...
           </#if>
       注：
         1.condition,condition2等：将被计算成布尔值的表达式。
         2.elseif和else指令是可选的。
-->
<h5>if,else,elseif逻辑判断指令</h5>
<#assign score = 60>
<#if score lt 60>
    <h6>你个小渣渣！！！</h6>
    <#elseif score == 60>
    <h6>分不在高，及格就行！！！</h6>
    <#elseif score gt 60 && score lt 80>
    <h6>革命尚未成功，同志仍需努力！！！</h6>
    <#else>
    <h6>哎呦不错哦！！！</h6>
</#if>

<#-- 判断数据是否存在 -->
<#assign list="">
<#if list??>
    数据存在
    <#else>
    数据不存在
</#if>
<br/>

<#if list2??>
    数据存在
<#else>
    数据不存在
</#if>
<br/>