<#--
    FreeMarker 数据类型
        序列类型 （数组、List、Set）
        通过list指令输出序列
        <#list 序列名 as 元素名>
            ${元素名}
        </#list>

        获取序列的长度        ${序列名?size}
        获取序列元素的下标     ${元素名?index}
        获取第一个元素        ${序列名?first}
        获取最后一个元素       ${序列名?last}


        倒序输出    序列名?reverse
        升序输出    序列名?sort
        降序输出    序列名?sort?reverse
        指定字段名排序   序列名?sort_by("字段名")
    注：一般是JavaBean集合，对应的字段名需要提供get方法
-->

<#-- 数组操作 -->
<#list stars as star>
    下标：${star?index}-姓名：${star}<br/>
</#list>

获取序列的长度：  ${stars?size}<br/>
获取第一个元素:   ${stars?first}<br/>
获取最后一个元素:  ${stars?last}<br/>

<#-- List操作 -->
<#list cityList as city>
    ${city}-
</#list>
<br/>
<#--倒序输出    序列名?reverse-->
<#list cityList?reverse as city>
    ${city}-
</#list>
<br/>
<#--升序输出    序列名?sort-->
<#list cityList?sort as city>
    ${city}-
</#list>
<br/>
<#--降序输出    序列名?sort?reverse-->
<#list cityList?sort?reverse as city>
    ${city}-
</#list>
<br/>

<#list userList as user>
    编号：${user.id}&nbsp;姓名：${user.username}&nbsp;${user.age}<br/>
</#list>

<#--指定字段名排序   序列名?sort_by("字段名")-->
<#list userList?sort_by("age") as user>
    编号：${user.id}&nbsp;姓名：${user.username}&nbsp;${user.age}<br/>
</#list>