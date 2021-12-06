<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title><dec:title /></title>
<jsp:include page="/WEB-INF/views/layout/header.jsp" />
<dec:head />
</head>
<body class="layout-login">
	<div class="layout-login__overlay"></div>
	<div class="layout-login__form bg-white" data-perfect-scrollbar>
		<div class="d-flex justify-content-center mt-2 mb-5 navbar-light">
            <a href="index.html" class="navbar-brand" style="min-width: 0">
                <img class="navbar-brand-icon" src="<c:url value='assets/images/logo.png'/>" width="250" alt="Stack">
            </a>
        </div>
		<dec:body/>
	</div>
	<jsp:include page="/WEB-INF/views/layout/footer.jsp" />
</body>
</html>