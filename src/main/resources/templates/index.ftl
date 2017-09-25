<#import "/spring.ftl" as spring>
<html>
<#if principal??>
<h1>Hello ${principal.getName()}</h1>
<#else>
<h1>Hello anonymous</h1>
</#if>
<p>
    <a href="/products">My products</a>
    <#if principal??>
    <a href="/logout">Logout</a>
    </#if>
</p>
</html>