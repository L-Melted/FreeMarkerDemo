<h4>FreeMarker 数据类型</h4>
<#--
    FreeMarker 数据类型
        布尔类型
            在freeMarker页面中不能直接输出，如果要输出需要转换成字符串
            方式一：?c
            方式二：?string 或 ?string('为true时显示的内容','为false时显示的内容')
            方式三：?then('为true时显示的内容','为false时显示的内容')
-->
<h5>布尔类型</h5><br/>
${flag?c}<br/>
${flag?string}<br/>
${flag?string('yes','no')}<br/>
${flag?string('喜欢','不喜欢')}<br/>

${flag?then('yes','no')}<br/>
${flag?then('喜欢','不喜欢')}<br/>