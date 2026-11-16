<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Xác thực OTP</title>
</head>
<body>
    <div style="text-align: center; margin-top: 50px;">
        <h2>Nhập mã OTP đã được gửi qua Email</h2>
        
        <c:if test="${not empty error}">
            <p style="color: red;">${error}</p>
        </c:if>

        <form action="${pageContext.request.contextPath}/verify-otp" method="post">
            <input type="text" name="otp" required placeholder="Nhập mã 6 chữ số">
            <button type="submit">Xác nhận</button>
        </form>
    </div>
</body>
</html>