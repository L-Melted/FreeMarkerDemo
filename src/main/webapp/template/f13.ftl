<#--
    nested 占位指令
        nested 相当于占位符，一般结合macro指令一起使用。
        可以将自定义指令中的内容通过nested指令占位，当使用自定义指令时，会将占位内容显示
-->

<#macro test>
    这是一段文本！！！
    <#nested>
    <#nested>
</#macro>
<@test><h4>这是文本后面的内容！！！</h4></@test>