<%@ page import="Dao.ConSql" %>
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
    <style>
        a:link,a:visited{
            color:#f75000;
            text-align:center;
            text-decoration:none;
            margin:10px;
        }
        ul{
            list-style-type:none;
            margin:30px;
            padding:0;
            overflow:hidden;
        }
        ul.sea{
            list-style-type:none;
            margin:30px;
            padding:20px;
            overflow:hidden;
            background-color:#A6FFA6;
        }
        li{
            width : 150px;
            float:left;
        }
    </style>

</head>
<body>
<%--<%--%>
    <%--if (ConSql.validationUserName("部门", (String)request.getSession().getAttribute("user"))){//当获得的session不为空时，发送欢迎语句。--%>
<%--%>--%>
<ul>
    <li style="color:#f75000">欢迎您：<%=request.getSession().getAttribute("user")%></li>
    <li><a href="/cn/success-man.jsp">返回首页</a> <a href="/index.jsp">注销</a></li>
</ul>
<ul class="sea">
    <li><a href="/cn/man/no-correct.jsp">查看未批改的申请</a></li>
</ul>
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
