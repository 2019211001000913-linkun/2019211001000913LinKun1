<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2021/4/6
  Time: 21:05
  To change this template use File | Settings | File Templates.
--%>
<%@include file="header.jsp"%>
<h1 style="text-align: center;color: #788dad">login</h1>

<%
    if (!(request.getAttribute("message")==null)) {
        out.println(request.getAttribute("message"));
    }
%>
<%
    Cookie [] allcookies=request.getCookies();
    String username="",password="",rememberMevale="";
    if(allcookies!=null){
        for(Cookie c:allcookies){
            if(c.getName().equals("cUsername")){
                username=c.getValue();
            }
            if(c.getName().equals("cPassword")){
                password=c.getValue();
            }
            if(c.getName().equals("cRememberMevale")){
                rememberMevale=c.getValue();
            }
        }
    }
%>

<form style="text-align: center;background: deepskyblue" method="post" action="login">
    username:<input type="text" name="username" value="<%=username%>" placeholder="username"></br></br>
    password:<input type="password" name="password" value="<%=password%>" placeholder="password"></br></br>
    <input type="checkbox" name="RememberMe" value="1"<%=rememberMevale.equals("1") ?"checked":""%>>RememberMe</br>
    <input type="submit" name="login" value="login">
</form>

<%@include file="footer.jsp"%>