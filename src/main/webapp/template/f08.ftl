<#--
    数据类型：hash类型
        key遍历输出
            <#list hash?keys as key>
                ${key} -- ${hash[key]}
            </#list>
         value遍历输出
            <#list hash?values as value>
                ${value}
            </#list>
-->
<#-- key遍历输出 -->
<#list cityMap?keys as key>
    ${key} -- ${cityMap[key]} <br/>
</#list>

<#--value遍历输出-->
<#list cityMap?values as value>
    ${value}<br/>
</#list>