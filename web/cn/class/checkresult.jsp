<%@ page import="Dao.ConSql" %>
<%@ page import="Dao.ConApply" %>
<%--
  Created by IntelliJ IDEA.
  User: online
  Date: 15-5-11
  Time: 下午5:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title></title>
    <style>
        ul{
            list-style-type: none;
            overflow:hidden;
            margin:-10px;
            margin-top:10px;
        }
        li{
            margin:5px;
            float: left;
            width:15%;
            overflow:hidden;
            white-space: nowrap;
            text-overflow:ellipsis;
            color:#ffffff;
            background-color:#ADADAD
        }
    </style>
</head>
<body>
<%--<%--%>
    <%--if (ConSql.validationUserName("教师", (String) request.getSession().getAttribute("user"))){//当获得的session不为空时，发送欢迎语句。--%>
<%--%>--%>

<%=ConApply.checkResult()%>
<%--<%--%>
<%--}--%>
<%--else--%>
<%--{--%>
<%--%>--%>
<%--<%--%>
    <%--request.getRequestDispatcher("/index.jsp").forward(request,response);//当为空时，返回登录界面。--%>
<%--%>--%>
<%--<%--%>
    <%--}--%>
<%--%>--%>


</body>
</html>
