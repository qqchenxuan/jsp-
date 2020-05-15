<%--
  Created by IntelliJ IDEA.
  User: 晨轩
  Date: 2020/5/12
  Time: 20:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java" pageEncoding="UTF-8" %>
<%@ page session="false" %>
<%@ page errorPage="index.jsp" %>
<%--
        Jsp的三种语言注释
                前段语言注释：会被转译，也会被发送，但是不会被浏览器执行
                java语言注释：会被转译，但是不会被servlet执行。
                jsp注释： 不会被转译   <%-- --%>
         Jsp的page指令学习：
              <%@page 属性名="属性值" 属性名="属性值" ....%>
              language:声明jsp要转译的语言。
              import：声明转译的java文件要导入的包，不同的包使用逗号隔开。
              pageEncoding:设置jsp文件的数据编码格式
              contentType="text/html;charset=UTF-8"：   设置jsp数据响应给浏览器时，浏览器的解析和编码格式
              session:设置转译的servlet中是否开启session支持，默认开启，true表示开启。false表示关闭。
              serrorPage:  设置jsp运行错误跳转的页面。
              extends：设置jsp转译的java文件要继承的父类
              page作用：配置jsp文件的转译相关参数

          jsp 的全局代码块：
               特点：声明的java代码作为全局代码转译到对应的servlet类中。
                使用：<%! 全局代码%>
                注意：全局代码快声明的代码，需要使用局部代码块调用。
                Jsp的脚本段语句。
                       特点：帮助我们快速的获取变量或者方法的返回值作为数据响应给浏览器。
                       使用：<%=变量名或者方法%>
                       注意s:不要在变量名或者方法后使用分号。
--%>
<html>
  <head>
      <title></title>
      <meta charset="UTF-8">
  </head>
<body>
       <h3>jsp基础语法</h3>

       <!--局部代码块-->
      <%
            //声明java代码域
           int a=2;
           if (a>3){
      %>
<b>jsp学习</b>

   <%
       } else {
   %>
       <%   String str="jsp中使用java代码很难受";   %>
       <i><% out.write(str); %><i>
<% test();} %>

<%!
    int b=5;
    public void test(){
        System.out.println("我是全局代码块声明");
    }

%>
   <%@include file="index.jsp"%>
</body>
</html>