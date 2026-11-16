<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Đặt lại mật khẩu</title>
</head>
<body>
    <div style="width: 350px; margin: 60px auto; text-align: center;">
        <h2>Đặt lại mật khẩu</h2>
        
        <c:if test="${not empty alert}">
            <p style="color: red;">${alert}</p>
        </c:if>

        <form action="${pageContext.request.contextPath}/reset-password" method="post">
            <input type="text" name="otp" required placeholder="Nhập mã OTP 6 số" style="width: 100%; padding: 8px; margin-bottom: 10px; box-sizing: border-box;">
            <input type="password" name="password" required placeholder="Mật khẩu mới" style="width: 100%; padding: 8px; margin-bottom: 10px; box-sizing: border-box;">
            <input type="password" name="confirmPassword" required placeholder="Nhập lại mật khẩu mới" style="width: 100%; padding: 8px; margin-bottom: 10px; box-sizing: border-box;">
            <button type="submit" style="width: 100%; padding: 8px;">Đổi mật khẩu</button>
        </form>
    </div>
</body>
</html>