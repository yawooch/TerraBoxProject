<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>
	<jsp:include page="${path}/views/common/header.jsp" />

	<jsp:include page="${path}/index_video.jsp" />

	<jsp:include page="${path}/index_movie.jsp" />

	<jsp:include page="${path}/index_notice.jsp" />

	<jsp:include page="${path}/views/common/footer.jsp" />