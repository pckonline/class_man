<%--
  Created by IntelliJ IDEA.
  User: online
  Date: 15-4-2
  Time: 下午4:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title></title>
</head>

<body>

    <%
        if (request.getSession().getAttribute("user")!=null){//当获得的session不为空时，发送欢迎语句。
    %>

    <%=request.getSession().getAttribute("user")%>
    <s:form action="Classroom_sub" name="su">
        <s:textfield name="aname" cssStyle="width: 120px" key="aname"/>
        <s:textfield name="aid" cssStyle="width: 120px" key="aid"/>
        <s:textarea name="reason" cssStyle="width: 220px;height: 220px;" key="reason"/>
        <s:textfield name="classid" key="classid"/>

        <s:submit key="sub"/>

    </s:form>
    <a href="/index.jsp">注销</a>
    <%
    }
    else
    {
    %>
    <%
        request.getRequestDispatcher("/index.jsp").forward(request,response);//当为空时，返回登录界面。
    %>
    <%
        }
    %>


</body>
</html>
