<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Chi tiết Video</title>
</head>
<body class="bg-light">
    <jsp:include page="/common/topbar.jsp" />

    <div class="container mt-4 mb-5">
        <div class="row justify-content-center">
            <div class="col-lg-9">
                <c:if test="${not empty video}">
                    <div class="card shadow">
                        <video class="w-100 rounded-top" style="max-height: 500px; background: #000;" controls autoplay>
                            <source src="${pageContext.request.contextPath}/uploads/${video.poster}" type="video/mp4">
                            Trình duyệt không hỗ trợ HTML5 video.
                        </video>
                        <div class="card-body">
                            <h3 class="card-title text-primary">${video.title}</h3>
                            <p class="text-muted"><i class="fa-regular fa-eye"></i> Lượt xem: ${video.views}</p>
                            <hr>
                            <h5 class="fw-bold">Mô tả:</h5>
                            <p class="card-text" style="white-space: pre-wrap;">${video.description}</p>
                        </div>
                    </div>
                </c:if>
                <c:if test="${empty video}">
                    <div class="alert alert-danger"><i class="fa-solid fa-triangle-exclamation"></i> Video không tồn tại hoặc đã bị xóa.</div>
                </c:if>
            </div>
        </div>
    </div>
</body>
</html>