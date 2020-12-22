<#--
    数据类型：数值类型
        在freemarker中数值类型可以直接输出；
        1.转字符串
          普通字符串   ?c
          货币型字符串  ？string.currency
          百分比型字符串 ？string.percent
         2.保留浮点型数值指定小数位（#表示一个小数位）
          ?string["0.##"
-->
<#-- 直接输出数值型 -->
${age} <br/>
${salary} <br/>
${avg} <br/>

<#-- 将数值转换成字符串类型 -->
${salary?c} <br/>

<#-- 将数值转化成货币类型字符串 -->
${salary?string.currency} <br/>

<#-- 将数值转化成百分比类型的字符串 -->
${avg?string.percent} <br/>

<#-- 将浮点型的数值转换成指定小数位输出(四舍五入) -->
${avg?string["0.##"]} <br/>
