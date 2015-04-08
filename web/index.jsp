<%--
  Created by IntelliJ IDEA.
  User: online
  Date: 15-4-2
  Time: 下午3:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"  language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<s:i18n name="cm.action.LoginAction_zh_CN" >
<html>
  <head>
    <title>Login</title>
  </head>
  <style>
      body{ text-align:center; }
      .waicheng {color: #0066CC; margin:5px auto; width:800px;background: url(img/1321927523991.jpg) no-repeat;
          height:600px; border:1px solid #000000;}
      .waicheng1{background: chartreuse no-repeat;height: 140;width: 260
      ;margin:3px auto;}
  </style>
  <script type="text/javascript">
      function _change(){
          var imgEle=document.getElementById("img");
          imgEle.src ="Login_img?a="+new Date().getTime();
      }

  </script>
  <%
      request.getSession().setAttribute("user",null);
  %>
  <body>
  <s:form name="js" action="Login_login">
      <s:actionmessage/><br/>
      <s:textfield name="username" key="user" /><br/>
      <s:textfield name="password" key="pass" /><br/>
      <s:radio name="way" label="请选择登录方式" list="{'教师','部门'}"/>
      <s:textfield name="verfi" size="3"/>
      <img src="Login_img" id="img">
      <a href="javascript:_change()">换一张</a>
      <s:submit key="login"/>
  </s:form>
  </body>
</html>
</s:i18n>