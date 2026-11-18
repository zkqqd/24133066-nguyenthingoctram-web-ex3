<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thêm Video Mới</title>
</head>
<body class="bg-light">
    <jsp:include page="/common/topbar.jsp" />

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card shadow-sm">
                    <div class="card-header bg-primary text-white">
                        <h4 class="mb-0"><i class="fa-solid fa-plus-circle"></i> Thêm Video Mới</h4>
                    </div>
                    <div class="card-body p-4">
                        <form method="post" action="${pageContext.request.contextPath}/admin/video/insert" enctype="multipart/form-data">
                            <div class="mb-3">
                                <label class="form-label fw-bold">Mã Video (Video ID):</label>
                                <input type="text" class="form-control" name="videoId" required placeholder="Nhập ID Video..." />
                            </div>
                            
                            <div class="mb-3">
                                <label class="form-label fw-bold">Tiêu đề (Title):</label>
                                <input type="text" class="form-control" name="title" required placeholder="Nhập tiêu đề video..." />
                            </div>
                            
                            <div class="mb-3">
                                <label class="form-label fw-bold">Mô tả (Description):</label>
                                <textarea class="form-control" name="description" rows="4" placeholder="Nhập mô tả..."></textarea>
                            </div>
                            
                            <div class="mb-3">
                                <label class="form-label fw-bold">Chọn file video/poster upload:</label>
                                <input type="file" class="form-control" name="poster" accept="video/*,image/*" required />
                            </div>
                            
                            <div class="d-grid gap-2 d-md-flex justify-content-md-end mt-4">
                                <a href="${pageContext.request.contextPath}/admin/videos" class="btn btn-secondary">Hủy</a>
                                <button type="submit" class="btn btn-primary"><i class="fa-solid fa-cloud-arrow-up"></i> Upload Video</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>