##第一天

### 登录界面的工作：
* 1.使用struts2  完成一些登录界面的文本输入。
* 2.使用了配置文件完成了验证码的添加  并使用js实现验证码的刷新。
* 3.添加了验证输入信息。当输入信息不正确时 或者有文本框未输入信息时。保留在本页面，发出提示错误的信息。
* 4.使用数据库系统进行用户信息的验证。这里有两个方式：一是验证教室管理者的信息。二是验证教务处管理者的信息。
* 5.增加用户功能的实现。
* 6.增加了验证码判断功能，不区分大小写。（防止暴力登录）
* 7.可以使用validations标签进行校验输入。（登录界面暂时不需要）
* 8.可以增加登录后的欢迎语句，比如xx登录后，显示‘欢迎您，xx老师。’（未添加）
```java
	<?xml version="1.0" encoding="UTF-8"?>

	<!DOCTYPE validation PUBLIC
        "-//Apache Software Foundation//DTD Struts Configuration 2.3//EN"
        "http://struts.apache.org/dtds/xwork-validator-1.0.3.dtd">
	
```
这里如果想配置校验方式   只需要修改第三行的struts 和第五行的dtds/后面的部分
    一个问题  如果配置了校验的XML文件  验证码无法输出在页面上。为什么？

##第二天

###教室管理者的页面
* 1.建立一个教学楼管理者所操作的页面，由该老师向教务处老师发出请求，等待回复。其中申请的内容应该属于一个表格形式。有申请者的姓名，编号，申请教室的用途，申请的时间，申请的教室编号。
* 2.创建申请表数据库classApply，id , aname, aid , reason , time , classid对应着申请者的姓名，编号，申请教室的用途，申请的时间，申请的教室编号。
* 3.增加了非登录访问操作界面时返回到登录界面（安全性问题）
```java

<%
    if (request.getSession().getAttribute("user")!=null){
%>
<%=request.getSession().getAttribute("user")%>
<%
}
else
{
%>
<%
    request.getRequestDispatcher("/index.jsp").forward(request,response);
%>
<%
    }
%>

```
* 4.一个问题，当不同的教室管理者进行提交表单时，所通过的session都是一个判断条件，即提交表单操作唯一，所有用户使用一个页面操作。  session不能一直存在。当用户关闭浏览器时，session取消。但是想要的效果不是这样的，我们需要添加一个注销功能和一个session存活的时间。即用户使用功能后，**1.关闭浏览器。2.点击注销登录。**
* 5.在登录界面添加了一个setSession的功能，其效果是点击注销时，返回登录界面且清除session。
* 6.提交表单，在一个table中，aname 文本框，aid 文本框，reason 文本框加长加宽必须是文本域 ``` <s:textarea />```，**重点**time 下拉框3层  年月日 再转成标准格式 parse返回一个Date类型   format返回一个字符串类型，classid 写编号。提交or注销，提交后返回申请页面。

##第三天

* 1.发现登录问题，登录时未区分教学楼管理者 和教务处管理页面。（已经添加）
* 2.添加ClassroomAction类，操作教室管理者页面的数据。
* 3.学会使用了配置文件properties的方法，即需要使用命令把文件进行类似于编辑。把编辑后的文字替换掉原来的文字。但是这个只是在访问过后才能体现的。例如由网址登录网站时，不会出现该配置，需要使用<s:i18n>标签。这里还需要使用native2ascii编译一下properties文件。把编译出的文本复制到文件中。（在网页中只识别编译后的文件。不变一乱码）
* 4.使用scp命令和tar命令进行数据的传输，需要将war文件进行tar压缩到当前目录下   scp的使用：scp -P3322  压缩文件名 online@210.44.176.241：/home/online

##第四天

* 1.登录openWRT时，发现自己的终端字体有变化，由于目录文件是深蓝色 导致字体看不清。换主题也没有用。修改 .bashrc文件。知道了alias   使用方法：alias 自定义命令='这里是'  还有一种是alias 自定义命令=""。如：alias ls="ls --color = auto"。
* 2.使用管道修改颜色。dircolors -p > 文件名   进行修改。
* 3.发现登录密码时非隐藏。已修改。
* 4.表单设计差一项时间选项。后台操作和时间下拉框，明日完善
* **5.为什么数据库一般都会有标识属性？** 因为在使用框架hibernate的时候会有一个对标识属性的操作。

##第五天

* 1.表单实现日期选择。其中(年)为独立选择，月和日联级下拉框。添加了2015-2029年的日期。需要写一个函数判断润年。(一个问题，就是当月和日为关联下拉框时，如何判断年份，能否直接操作。)
* 2.修改。因为是由老师自行填写，是否可以以文本框的形式填写。暂时修改为，周，星期，课时。待问题解决后，修改回年月日。
* 3.把表单的数据填写到数据库中，需要一个判别数据库字段。作用：当填写完成时，判别默认为未批准，当Man同意时，修改为已批准。class  和 man分别可以查看状态。man查看到未批准时，进行批改，是or否   ，class查看时 是：是or否or未批。

##第六天

* 1.当挂到xen时出现错误，简单项目 无法显示验证码，另一个项目无法执行。找到原因，系统的环境变量中没有java   ，因此也了解了tomcat的一点行为，会自动使用jdk编译jar包，运行catalina.bat等文件。
```
Using CATALINA_BASE:   /home/online/download/apache-tomcat-8.0.15
Using CATALINA_HOME:   /home/online/download/apache-tomcat-8.0.15
Using CATALINA_TMPDIR: /home/online/download/apache-tomcat-8.0.15/temp
Using JRE_HOME:        /usr/lib/jvm/jdk1.8.0_20
Using CLASSPATH:       /home/online/download/apache-tomcat-8.0.15/bin/bootstrap.jar:/home/online/download/apache-tomcat-8.0.15/bin/tomcat-juli.jar
Tomcat started.
```
这里JRE_HOME是发现错误原因的主要点。
* 2.添加了申请表单写入数据库。
* 3.管理者获取为批改的申请，并给出批改项。
* 4.对数据的处理，留着一个备份文件，每月在数据库中删除申请使用时间已经超过的数据。
* 5.页面效果初步完成  等待提高页面效果和添加发送邮件功能。
