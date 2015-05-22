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
      body{ text-align:center;background-image: url("/img/login.jpg");background-size:100% 120%  }
      div.login{
          position:absolute;
          top: 26%;
          left: 45%;
      }/* 登录框的css*/
      .cor{
          position:absolute;
          top: 64%;
          left: 10%;
      }/* 验证码*/
       a:link,a:visited{
           display:block;
           width:60px;
           font-weight:bold;
           color:#FFFFFF;
           background-color:#bebebe;
           text-align:center;
           text-decoration:none;
       }
       img{
           height: 4%;
           width:100%;
       }
      ul
      {
          list-style-type:none;
          margin:0;
          padding:0;
          overflow:hidden;
      }
      .input{
          border:2px solid;
          outline: none;
          border-top-left-radius:2em;
          border-top-right-radius:2em;
          border-bottom-right-radius:2em;
          border-bottom-left-radius:2em;
      }
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
  <div class="login">
      <s:form name="js" action="Login_login">
          <s:actionmessage/><br/>
          <s:textfield cssClass="input" name="username" label="用户名" /><br/>
          <s:password cssClass="input" name="password" label="密码" /><br/>
          <s:radio name="way" label="请选择登录方式" list="{'教师','部门'}"/>
          <s:textfield cssClass="input" name="verfi" size="6"/>
          <s:submit cssStyle="display:block;
width:40px;
font-weight:bold;
color:#FFFFFF;
background-color:#bebebe;
text-align:center;" value="登录"/>
      </s:form>
      <div class="cor">
          <ul>
              <li><img src="Login_img" id="img"></li>
              <li><a href="javascript:_change()">换一张</a></li>
          </ul>
      </div>

  </div>
  </body>
</html>
</s:i18n>