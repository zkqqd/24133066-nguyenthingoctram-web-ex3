<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!-- Thanh Topbar -->
<div style="background-color: #f8f9fa; padding: 10px; border-bottom: 1px solid #ddd; text-align: right;">
    
    <c:choose>
        <%-- Nếu chưa đăng nhập (Session account bị null) --%>
        <c:when test="${sessionScope.account == null}">
            <a href="${pageContext.request.contextPath}/login">Đăng nhập</a> | 
            <a href="${pageContext.request.contextPath}/register">Đăng ký</a>
        </c:when>
        
        <%-- Nếu đã đăng nhập --%>
        <c:otherwise>
            Xin chào, <b>${sessionScope.account.fullname}</b> | 
            <a href="${pageContext.request.contextPath}/logout">Đăng Xuất</a>
        </c:otherwise>
    </c:choose>
    
</div>