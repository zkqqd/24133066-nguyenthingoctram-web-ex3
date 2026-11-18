<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Tạo Tài Khoản</title>
</head>
<body class="bg-light">
    <jsp:include page="/common/topbar.jsp" />

    <div class="container mb-5">
        <div class="row justify-content-center">
            <div class="col-md-7 col-lg-6">
                <div class="card shadow-sm">
                    <div class="card-header bg-success text-white text-center">
                        <h4 class="mb-0"><i class="fa-solid fa-user-plus"></i> Tạo Tài Khoản Mới</h4>
                    </div>
                    <div class="card-body p-4">
                        <c:if test="${not empty alert}">
                            <div class="alert alert-danger py-2">${alert}</div>
                        </c:if>

                        <form action="${pageContext.request.contextPath}/register" method="post">
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label class="form-label">Tài khoản</label>
                                    <input type="text" name="username" class="form-control" placeholder="Tài khoản" value="${param.username}" required>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label class="form-label">Mật khẩu</label>
                                    <input type="password" name="password" class="form-control" placeholder="Mật khẩu" required>
                                </div>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Họ tên</label>
                                <input type="text" name="fullname" class="form-control" placeholder="Họ tên" value="${param.fullname}" required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Email</label>
                                <input type="email" name="email" class="form-control" placeholder="Nhập Email" value="${param.email}" required>
                                <div class="form-text">Mã OTP xác thực sẽ được gửi tới email này.</div>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Số điện thoại</label>
                                <input type="text" name="phone" class="form-control" placeholder="Số điện thoại" value="${param.phone}" required>
                            </div>
                            <button type="submit" class="btn btn-success w-100">Tạo tài khoản</button>
                        </form>
                    </div>
                    <div class="card-footer text-center">
                        Đã có tài khoản? <a href="${pageContext.request.contextPath}/login">Đăng nhập</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>