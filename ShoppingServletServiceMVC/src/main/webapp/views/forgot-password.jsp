<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quên mật khẩu</title>
</head>
<body>
    <div style="width: 350px; margin: 60px auto; text-align: center;">
        <h2>Quên mật khẩu</h2>
        
        <c:if test="${not empty alert}">
            <p style="color: red;">${alert}</p>
        </c:if>

        <form action="${pageContext.request.contextPath}/forgot-password" method="post">
            <input type="email" name="email" required placeholder="Nhập email của bạn" style="width: 100%; padding: 8px; margin-bottom: 10px; box-sizing: border-box;">
            <button type="submit" style="width: 100%; padding: 8px;">Gửi mã OTP</button>
        </form>
        <br>
        <a href="${pageContext.request.contextPath}/login">Quay lại đăng nhập</a>
    </div>
</body>
</html>