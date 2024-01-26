<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>
	<jsp:include page="${path}/views/common/header.jsp" />
    <link rel="stylesheet" href="${path}/views/ticket/css/jquery.mCustomScrollbar.min.css"/>
    <link rel="stylesheet" href="${path}/views/ticket/css/tk.css">
    <!-- <link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"> -->
    <link rel="stylesheet" href="${path}/views/common/css/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <!-- <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> -->
    <!-- <script src="${path}/views/common/js/jquery-ui.js"></script> -->
    <script src="${path}/views/ticket/js/jquery.mCustomScrollbar.concat.min.js"></script>
    
    <main>
    <script>
        $(document).ready(function(){
            $(".content").mCustomScrollbar();

            $('#mCSB_17_container *').click(function(event){
                console.log(event.target);
                console.log('클릭!');
                location.href = '/ticket/seat';
            });
            
            $( "#datepicker" ).datepicker({
            showOn: "button",
            buttonImage: "/views/ticket/img/ico-calendar-w20.png",
            buttonImageOnly: true,
            buttonText: "Select date"
            });
            
            $( "#calendar" ).datepicker({
            showOn: "button",
            buttonImage: "images/calendar.gif",
            buttonImageOnly: true,
            buttonText: "Select date"
            });
        });
    </script>
    <div>
        <input type="hidden" name="" id="datepicker">
    </div>
    </main>
    
    
	<jsp:include page="${path}/views/common/footer.jsp" />