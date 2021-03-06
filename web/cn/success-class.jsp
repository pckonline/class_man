<%@ page import="Dao.ConApply" %>
<%@ page import="Dao.ConSql" %>
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
    <title>登录页面</title>
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
        iframe{
            height: 580px;
            width: 1300px;
        }
        div{
            width:700px;
            height:700px;
        }
    </style>
</head>
<body>
<%
    if (ConSql.validationUserName("教师",(String)request.getSession().getAttribute("user"))){//当获得的session不为空时，发送欢迎语句。
%>
<div>
    <ul>
        <li style="color:#f75000">欢迎您：<%=request.getSession().getAttribute("user")%></li>
        <li><a href="/cn/success-class.jsp">返回首页</a> <a href="/index.jsp">注销</a></li>
    </ul>
    <ul class="sea">
        <li><b><a href="/cn/class/subtab.jsp" target="iframe_2">提交表单</a></b></li>
        <li><b><a href="/cn/class/checkresult.jsp" target="iframe_2">查看结果</a></b></li>
    </ul>
    <ul>
        <iframe name="iframe_2" frameborder="0"></iframe>
    </ul>
</div>

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
