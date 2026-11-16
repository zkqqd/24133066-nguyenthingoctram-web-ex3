<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Trang Chủ</title>
</head>
<body>
    <jsp:include page="/common/topbar.jsp" />

    <h2>Chào mừng bạn đến với hệ thống!</h2>
    
    <h3>Tài khoản: ${sessionScope.account.username}</h3>
    <h3>Họ tên: ${sessionScope.account.fullname}</h3>
</body>
</html>