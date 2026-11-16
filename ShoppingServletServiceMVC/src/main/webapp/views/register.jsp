<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tạo Tài Khoản</title>
</head>
<body>
    <h2>Tạo tài khoản mới</h2>
    
    <c:if test="${alert != null}">
        <h3 style="color:red;">${alert}</h3>
    </c:if>

    <form action="${pageContext.request.contextPath}/register" method="post">
        <div>
            <label>Tài khoản:</label>
            <input type="text" name="username" placeholder="Tài khoản" required>
        </div>
        <div>
            <label>Mật khẩu:</label>
            <input type="password" name="password" placeholder="Mật khẩu" required>
        </div>
        <div>
            <label>Họ tên:</label>
            <input type="text" name="fullname" placeholder="Họ tên" required>
        </div>
        <div>
            <label>Email:</label>
            <input type="email" name="email" placeholder="Nhập Email" required>
        </div>
        <div>
            <label>Số điện thoại:</label>
            <input type="text" name="phone" placeholder="Số điện thoại" required>
        </div>
        <button type="submit">Tạo tài khoản</button>
    </form>
    
    <p>Nếu bạn đã có tài khoản? <a href="${pageContext.request.contextPath}/login">Đăng nhập</a>
</body>
</html>