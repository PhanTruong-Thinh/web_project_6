<%@ page import="vn.edu.hcmuaf.fit.model.Account_User" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
</head>
<body>
<% Account_User auth= (Account_User) session.getAttribute("auth"); %>
<% if(auth==null){ %>
<p> Bạn chưa đăng nhập </p>
<% } else { %>
<p> Chào bạn :<% auth.getEmail() ;%> </p>
<% } %>

</body>
</html>