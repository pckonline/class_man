<%@ page import="Dao.ConSql" %>
<%--
  Created by IntelliJ IDEA.
  User: online
  Date: 15-5-11
  Time: 下午5:08
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
    </style>
</head>
<body>

<%--<%--%>
    <%--if (ConSql.validationUserName("教师", (String) request.getSession().getAttribute("user"))){//当获得的session不为空时，发送欢迎语句。--%>
<%--%>--%>

<s:form action="Classroom_sub" name="su">
    <s:textfield cssClass="input" name="aname" cssStyle="width: 220px" label="姓名"/>
    <s:textfield  cssClass="input" name="aid" cssStyle="width: 220px" label="学号"/>
    <s:textarea cssClass="input" name="reason" cssStyle="width: 220px;height: 220px;" label="100字以内" labelposition="left" />
    <s:textfield cssClass="input" name="classid" cssStyle="width: 220px" label="教室编号"/>
    <s:set name="pd"
           value="#{'1':{'1-2','3-4','5-6','7-8','9-10'},
               '2':{'1-2','3-4','5-6','7-8','9-10'},
               '3':{'1-2','3-4','5-6','7-8','9-10'},
               '4':{'1-2','3-4','5-6','7-8','9-10'},
               '5':{'1-2','3-4','5-6','7-8','9-10'},
               '6':{'1-2','3-4','5-6','7-8','9-10'},
               '7':{'1-2','3-4','5-6','7-8','9-10'}}"/>
    <s:select cssClass="input" name="year" label="周" labelposition="top" list="{'1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22'}"/>
    <s:doubleselect doubleCssClass="input" cssClass="input" doubleList="#pd[top]" doubleName="day" label="星期:课时" labelposition="top"  list="#pd.keySet()" name="month"/>
    <%--下拉框。。。不知为何会变红。。。当改变第一个下拉框时，第二个下拉框的值会随之改变--%>
    <s:submit cssStyle="display:block;
width:80px;
font-weight:bold;
color:#FFFFFF;
background-color:#bebebe;
text-align:center;" value="提交" />

</s:form>
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
