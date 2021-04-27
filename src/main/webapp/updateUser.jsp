<%@ page import="com.linkun.model.User" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2021/4/27
  Time: 16:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<%
    User u=(User) session.getAttribute("user");
%>

<%--<%--%>
<%--    User u=(User) session.getAttribute("user");--%>
<%--    if ((request.getAttribute("message")!=null)){--%>
<%--%>--%>
<%--<script type="text/javascript" language="javascript">--%>
<%--    alert("<%=request.getAttribute("message")%>");--%>
<%--</script>--%>
<%--<%--%>
<%--    }--%>
<%--%>--%>

<form  style="text-align:center" method="post" action="updateUser">
    <!--<input type="text" name="userid" value="" placeholder="登录名"/>-->
    <h1 style="text-align:center;color:#80002d" > User Update</h1></br>
    <input type="hidden" name="id" value="<%=u.getId()%>" >
    username:<input type="text" name="username" value="<%=u.getUsername()%>"
                    onFocus="if(value==defaultValue){value='';this.style.color='#000'}"
                    onBlur="if(!value){value=defaultValue;this.style.color='#999'}" style="color:#999999;background: #EAEAAE" /><br/><br/>
    password:<input type="password" name="password" value="<%=u.getPassword()%>"
                    onFocus="if(value==defaultValue){value='';this.style.color='#000'}"
                    onBlur="if(!value){value=defaultValue;this.style.color='#999'}" style="color:#999999;background: #EAEAAE" /><br/><br/>

    Email:<input type="Email" name="email" value="<%=u.getEmail()%>"
                 onFocus="if(value==defaultValue){value='';this.style.color='#000'}"
                 onBlur="if(!value){value=defaultValue;this.style.color='#999'}" style="color:#999999;background: #EAEAAE" /><br/><br/>

    <input type="radio" name="gender"  id="man1" value="male" <%="male".equals(u.getGender())?"checked":""%>/>
    <label for="man1">Male</label>
    <input type="radio" name="gender" id="man2" value="female" <%="female".equals(u.getGender())?"checked":""%>/>
    <label for="man2">Female</label><br/><br/>
    birthDate:<input type="date" name="birthDate" value="<%=u.getBirthDate()%>"
                     onFocus="if(value==defaultValue){value='';this.style.color='#000'}"
                     onBlur="if(!value){value=defaultValue;this.style.color='#999'}" style="color:#999999;background: #EAEAAE" />
    <input type="submit" name="Submit" value="Save changes" />
    <input type="submit" name="Submit2" value="reset" />
</form>
<%@include file="footer.jsp"%>