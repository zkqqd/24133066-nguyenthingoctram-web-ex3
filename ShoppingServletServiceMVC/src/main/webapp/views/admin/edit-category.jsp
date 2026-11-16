<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Sửa danh mục</title>
</head>
<body>
    <h2>Chỉnh sửa danh mục</h2>
    <form action="${pageContext.request.contextPath}/admin/category/edit" method="post">
        <input type="hidden" name="id" value="${category.categoryId}">
        <input type="hidden" name="icon" value="${category.images}">
        
        <label>Tên danh mục:</label><br>
        <input type="text" name="catename" value="${category.categoryName}" required><br><br>
        
        <button type="submit">Cập nhật</button>
    </form>
</body>
</html>