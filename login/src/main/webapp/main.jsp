
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main</title>
</head>
<body>

    <%-- check login name --%>
    <% if (null != session.getAttribute( "name" )) { %>
        <h2>Hello <%= session.getAttribute( "name" ) %></h2>
    <% } else { %>
        <h2> Main page</h2>
    <% } %>

    <%-- grant acces depend on role --%>
    <% if (request.isUserInRole("ROLE_EMISSION")) { %>
        <a href="/app1/login/app1/">emission</a>
        <br>
    <% } %>
    <%  if (request.isUserInRole("ROLE_TERMINAL")) { %>
        <a href="/app2/app2/">terminal</a>
    <% } %>

    <%-- show links without access --%>
    <h4>default links: </h4>
    <a href="/app1/login/app1/">module app1</a>
    <a href="/app2/app2">module app2</a>

</body>
</html>
