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
    <style>
        .input{
            border:2px solid;
            outline: none;
            border-top-left-radius:2em;
            border-top-right-radius:2em;
            border-bottom-right-radius:2em;
            border-bottom-left-radius:2em;
        }
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
        li.reason:active{
            height: 40px;
            width: 2000px;
            overflow: visible;
        }
        div.from{
                 position:absolute;top: 500px; left: 35px;
            width:500px;
             }
        div{
            width:500px;
        }
    </style>
</head>
<body>
<%
    if (ConSql.validationUserName("部门", (String) request.getSession().getAttribute("user"))){//当获得的session不为空时，发送欢迎语句。
%>
<div>
    <%=ConApply.noCorrect()%>
    <div class="from">
        <s:form action="Correct_resu" name="n1">
            <s:textfield cssClass="input" name="id" label="批改的id"></s:textfield>
            <s:select cssClass="input" list="{'是','否'}" label="是否同意申请" name="result"/>
            <s:submit cssStyle="display:block;
width:80px;
font-weight:bold;
color:#FFFFFF;
background-color:#bebebe;
text-align:center;" value="发送邮件"/>
        </s:form>
    </div>
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
