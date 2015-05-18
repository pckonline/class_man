<%@ page import="Dao.ConSql" %>
<%@ page import="Dao.ConApply" %>
<%--
  Created by IntelliJ IDEA.
  User: online
  Date: 15-5-11
  Time: 下午2:56
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
    if (ConSql.validationUserName("部门", (String) request.getSession().getAttribute("user"))){//当获得的session不为空时，发送欢迎语句。
%>
<%=ConApply.noCorrect()%>
<s:form action="Correct_resu" name="n1">
    <s:textfield name="id" label="批改的id"></s:textfield>
    <s:select list="{'是','否'}" label="是否同意申请" name="result"/>
    <s:submit label="go"/>
</s:form>
<a href="/cn/success-man.jsp">返回首页</a>
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
