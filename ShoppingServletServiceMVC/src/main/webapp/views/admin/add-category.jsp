<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Thêm danh mục</title>
</head>
<body>
    <h2>Thêm danh mục mới</h2>
	<form role="form" action="add" method="post" enctype="multipart/form-data">
	    <div class="form-group">
	        <label>Tên danh mục:</label>
	        <input class="form-control" placeholder="Nhập tên danh mục" name="catename" required />
	    </div>

	    <div class="form-group">
	        <label>Ảnh đại diện</label>
	        <input type="file" name="icon" />
	    </div>
	    <button type="submit" class="btn btn-default">Thêm</button>
	</form>
</body>
</html> 