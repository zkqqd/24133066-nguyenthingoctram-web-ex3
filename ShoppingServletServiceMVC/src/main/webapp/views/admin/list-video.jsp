<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quản Lý Video</title>
</head>
<body class="bg-light">
    <jsp:include page="/common/topbar.jsp" />

    <div class="container mb-5">
        <div class="d-flex justify-content-between align-items-center border-bottom pb-2 mb-3">
            <h2 class="text-primary"><i class="fa-solid fa-video"></i> Quản Lý Video</h2>
            <a href="${pageContext.request.contextPath}/views/admin/add-video.jsp" class="btn btn-success"><i class="fa-solid fa-plus"></i> Thêm Video Mới</a>
        </div>

        <div class="card shadow-sm">
            <div class="card-body p-0">
                <table class="table table-hover table-bordered mb-0">
                    <thead class="table-dark">
                        <tr>
                            <th class="text-center" width="10%">Video ID</th>
                            <th class="text-center" width="15%">Poster</th>
                            <th width="30%">Tiêu đề</th>
                            <th class="text-center" width="10%">Lượt xem</th>
                            <th class="text-center" width="20%">Thao tác</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${videos}" var="video">
                            <tr class="align-middle">
                                <td class="text-center fw-bold">${video.videoId}</td>
                                <td class="text-center">
									<video style="height: 60px; max-width: 100px;" preload="metadata" muted>
									    <source src="${pageContext.request.contextPath}/uploads/${video.poster}" type="video/mp4">
									</video>
                                </td>
                                <td>${video.title}</td>
                                <td class="text-center">${video.views}</td>
                                <td class="text-center">
                                    <a href="${pageContext.request.contextPath}/video/detail?id=${video.videoId}" class="btn btn-sm btn-info text-white"><i class="fa-solid fa-eye"></i> Xem</a>
                                    <a href="${pageContext.request.contextPath}/admin/video/edit?id=${video.videoId}" class="btn btn-sm btn-warning text-dark"><i class="fa-solid fa-pen-to-square"></i> Sửa</a>
                                    <a href="${pageContext.request.contextPath}/admin/video/delete?id=${video.videoId}" class="btn btn-sm btn-danger" onclick="return confirm('Bạn có chắc chắn muốn xóa video này?');"><i class="fa-solid fa-trash"></i> Xóa</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>