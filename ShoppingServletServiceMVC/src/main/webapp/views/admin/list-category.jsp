<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Quản lý danh mục</title>
</head>
<body>
    <h2>Danh sách danh mục</h2>
    <a href="${pageContext.request.contextPath}/admin/category/add">Thêm danh mục mới</a>
    <table border="1">
        <tr>
            <th>STT</th>
            <th>Tên danh mục</th>
            <th>Hành động</th>
        </tr>
        <c:forEach items="${cateList}" var="cate" varStatus="STT">
            <tr>
                <td>${STT.index + 1}</td>
                <td>${cate.categoryName}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/admin/category/edit?id=${cate.categoryId}">Sửa</a> | 
                    <a href="${pageContext.request.contextPath}/admin/category/delete?id=${cate.categoryId}" onclick="return confirm('Bạn có chắc muốn xóa?')">Xóa</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>