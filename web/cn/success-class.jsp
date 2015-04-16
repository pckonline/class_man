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
        <s:set name="pd"
               value="#{'1':{'1-2','3-4','5-6','7-8','9-10'},
               '2':{'1-2','3-4','5-6','7-8','9-10'},
               '3':{'1-2','3-4','5-6','7-8','9-10'},
               '4':{'1-2','3-4','5-6','7-8','9-10'},
               '5':{'1-2','3-4','5-6','7-8','9-10'},
               '6':{'1-2','3-4','5-6','7-8','9-10'},
               '7':{'1-2','3-4','5-6','7-8','9-10'}}"/>
        <s:select name="year" label="周" labelposition="top" list="{'1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22'}"/>
        <s:doubleselect doubleList="#pd[top]" doubleName="day" label="星期:课时" labelposition="top"  list="#pd.keySet()" name="month"/>
        <%--下拉框。。。不知为何会变红。。。当改变第一个下拉框时，第二个下拉框的值会随之改变--%>
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
