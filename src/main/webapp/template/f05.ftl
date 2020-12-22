<#--
    数据类型：字符串类型
        在freemarker中字符串类型可以直接输出：
        1.截取字符串（左闭右开）?substring(start,end)
        2.首字母小写输出 ?uncap_first
        3.首字母大写输出 ?cap_first
        4.字母转小写输出 ?lower_case
        5.字母转大写输出 ?upper_case
        6.获取字符串长度 ?length
        7.是否以指定字符开头（boolean 类型） ?starts_with("xx")?string
        8.是否以指定字符结尾（boolean 类型） ?ends_with("xx")?string
        9.获取指定字符的索引 ？index_of("xx")
        10.去除字符串前后空格 ?trim
        11.替换指定字符串 ?replace("xx","xx")
-->

${msg} -- ${msg2} <br/>
${msg?string} -- ${msg2?string} <br/>
<#--1.截取字符串（左闭右开）?substring(start,end)-->
${msg?substring(0,2)}<br/>
<#--2.首字母小写输出 ?uncap_first-->
${msg?uncap_first}<br/>
<#--3.首字母大写输出 ?cap_first-->
${msg?cap_first}<br/>
<#--4.字母转小写输出 ?lower_case-->
${msg?lower_case}<br/>
<#--5.字母转大写输出 ?upper_case-->
${msg2?upper_case}<br/>
<#--6.获取字符串长度 ?length-->
${msg?length}<br/>
<#--7.是否以指定字符开头（boolean 类型） ?starts_with("xx")?string-->
${msg?starts_with("a")?string}<br/>
<#--8.是否以指定字符结尾（boolean 类型） ?ends_with("xx")?string-->
${msg?ends_with("o")?string}<br/>
<#--9.获取指定字符的索引 ？index_of("xx")-->
${msg2?index_of("m")}<br/>
<#--10.去除字符串前后空格 ?trim-->
${msg2?trim}<br/>
<#--11.替换指定字符串 ?replace("xx","xx")-->
${msg?replace("he","we")}<br/>