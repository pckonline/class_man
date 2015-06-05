<%@ page import="Dao.ConSql" %>
<%--
  Created by IntelliJ IDEA.
  User: online
  Date: 15-6-5
  Time: 下午6:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <script language="JavaScript">
        window.location.href="mailto:<%=request.getSession().getAttribute("mail")%>?subject=申请教室通知&body=您未通过申请，详情请咨询...。"
    </script>
</head>
<body>
<%
    if (ConSql.validationUserName("部门", (String) request.getSession().getAttribute("user"))){//当获得的session不为空时，发送欢迎语句。
%>
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
