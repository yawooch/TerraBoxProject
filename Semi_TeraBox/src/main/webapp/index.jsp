<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="icon" href="${path}/views/question/img/TeraBox.ico">
    <title>LIFE THEATER, 테라박스</title>

<body>
	<jsp:include page="${path}/views/common/header.jsp" />

	<jsp:include page="${path}/index_video.jsp" />

	<jsp:include page="${path}/index_movie.jsp" />

	<jsp:include page="${path}/index_notice.jsp" />

	<jsp:include page="${path}/views/common/footer.jsp" />
</body>
</html>