##第一天

### 登录界面的工作：
* 1.使用struts2  完成一些登录界面的文本输入。
* 2.使用了配置文件完成了验证码的添加  并使用js实现验证码的刷新。
* 3.添加了验证输入信息。当输入信息不正确时 或者有文本框未输入信息时。保留在本页面，发出提示错误的信息。
* 4.使用数据库系统进行用户信息的验证。这里有两个方式：一是验证教室管理者的信息。二是验证教务处管理者的信息。
* 5.增加用户功能的实现。
* 6.增加了验证码判断功能，不区分大小写。（防止暴力登录）
* 7.可以使用validations标签进行校验输入。（登录界面暂时不需要）
```java
	<?xml version="1.0" encoding="UTF-8"?>

	<!DOCTYPE validation PUBLIC
        "-//Apache Software Foundation//DTD Struts Configuration 2.3//EN"
        "http://struts.apache.org/dtds/xwork-validator-1.0.3.dtd">
	
```
这里如果想配置校验方式   只需要修改第三行的struts 和第五行的dtds/后面的部分
    一个问题  如果配置了校验的XML文件  验证码无法输出在页面上。为什么？
