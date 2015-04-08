<%--
  Created by IntelliJ IDEA.
  User: online
  Date: 15-4-8
  Time: 下午7:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
    <title></title>
</head>
<body>
<%
    if (request.getSession().getAttribute("user")!=null){//当获得的session不为空时，发送欢迎语句。
%>
<%=request.getSession().getAttribute("user")%>
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
