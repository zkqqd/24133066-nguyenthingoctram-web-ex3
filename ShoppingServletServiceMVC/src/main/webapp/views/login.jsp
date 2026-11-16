<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Đăng Nhập</title>
</head>
<body>
    <h2>Đăng Nhập Vào Hệ Thống</h2>
    <c:if test="${alert != null}">
        <h3 class="alert alert-danger" style="color: red;">${alert}</h3>
    </c:if>
    
    <form action="${pageContext.request.contextPath}/login" method="post">
        <div>
            <label>Tài khoản:</label>
            <input type="text" name="username" placeholder="Tài khoản" required>
        </div>
        <br>
        <div>
            <label>Mật khẩu:</label>
            <input type="password" name="password" placeholder="Mật khẩu" required>
        </div>
        <br>
        <div>
            <input type="checkbox" name="remember"> Nhớ tôi
        </div>
        <br>
        <button type="submit">Đăng nhập</button>
    </form>
    <br>
    <div>
        <a href="${pageContext.request.contextPath}/forgot-password">Quên mật khẩu?</a> | 
        <a href="${pageContext.request.contextPath}/register">Đăng ký tài khoản</a>
    </div>
</body>
</html>