<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sửa Video</title>
</head>
<body class="bg-light">
    <jsp:include page="/common/topbar.jsp" />

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card shadow-sm">
                    <div class="card-header bg-warning text-dark">
                        <h4 class="mb-0"><i class="fa-solid fa-pen-to-square"></i> Cập Nhật Video</h4>
                    </div>
                    <div class="card-body p-4">
                        <form method="post" action="${pageContext.request.contextPath}/admin/video/update" enctype="multipart/form-data">
                            <div class="mb-3">
                                <label class="form-label fw-bold">Mã Video (Video ID):</label>
                                <input type="text" class="form-control bg-light" name="videoId" value="${video.videoId}" readonly />
                            </div>
                            
                            <div class="mb-3">
                                <label class="form-label fw-bold">Tiêu đề (Title):</label>
                                <input type="text" class="form-control" name="title" value="${video.title}" required />
                            </div>
                            
                            <div class="mb-3">
                                <label class="form-label fw-bold">Mô tả (Description):</label>
                                <textarea class="form-control" name="description" rows="4">${video.description}</textarea>
                            </div>
                            
                            <div class="mb-3">
                                <label class="form-label fw-bold">File video/poster hiện tại:</label>
                                <div><span class="badge bg-secondary">${video.poster}</span></div>
                                <label class="form-label fw-bold mt-2">Đổi file khác (Bỏ trống nếu giữ nguyên):</label>
                                <input type="file" class="form-control" name="poster" accept="video/*,image/*" />
                            </div>
                            
                            <div class="d-grid gap-2 d-md-flex justify-content-md-end mt-4">
                                <a href="${pageContext.request.contextPath}/admin/videos" class="btn btn-secondary">Hủy</a>
                                <button type="submit" class="btn btn-warning"><i class="fa-solid fa-save"></i> Lưu Thay Đổi</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>