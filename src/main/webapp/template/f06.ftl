<#--
字符串空值情况处理：

        FreeMarker的变量必须赋值，否则就会抛出异常。而对于FreeMarker来说，null值和不存在的变量是完全一样的，因为FreeMarker无法理解null值。

        FreeMarker提供两个运算符来避免空值：

①！：指定缺失变量的默认值

    ${value!}:如果value值为空，则默认值是空字符串

    ${value!"默认值"}:如果value值为空，则默认值是字符串“默认值”

②??:判断变量是否存在

    如果变量存在，返回true,否则返回false

    ${(value??)?string}

-->



<#-- 如果值不存在，直接输出会报错 -->
<#-- ${bb}-->

<#-- 值为null的数据 -->
<#--${str1}<br/>-->

<#-- 值为空字符串的数据 -->
${str2}<br/>
<#-- 使用!，当值不存在时，默认显示空字符串 -->
${str!}<br/>
<#-- 使用!"xx"，当值不存在时，默认显示指定字符串 -->
${str!"这是一个默认值"}<br/>
<#-- 使用??,判断字符串是否为空；返回布尔类型，如果想要输出，需要将布尔类型转换成字符串-->
${(str??)?string}<br/>
