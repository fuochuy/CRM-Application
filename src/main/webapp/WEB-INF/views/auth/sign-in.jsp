<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>

<head>
<meta charset="UTF-8">
<title>Sign In</title>
</head>

<body>
	<h4 class="m-0">Welcome back!</h4>
        <p class="mb-5">Login to access your account </p>
        <c:if test="${not empty message}">
				<div class="alert alert-dismissible bg-${alert } text-white border-0 fade show">
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					${message}
				</div>
		</c:if>
        <form action="<c:url value='/sign-in'/>" method="post" novalidate>
            <div class="form-group">
                <label class="text-label" for="email_2">Email Address:</label>
                <div class="input-group input-group-merge">
                    <input id="email_2" type="email" required class="form-control form-control-prepended" placeholder="john@gmail.com" name="email">
                    <div class="input-group-prepend">
                        <div class="input-group-text">
                             <span class="far fa-envelope"></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="text-label" for="password_2">Password:</label>
                <div class="input-group input-group-merge">
                    <input id="password_2" type="password" required class="form-control form-control-prepended" placeholder="Enter your password" name="password">
                    <div class="input-group-prepend">
                        <div class="input-group-text">
                            <span class="fa fa-key"></span>
                        </div>
                    </div>
                </div>
            </div>
            <!-- <div class="form-group mb-5">
                <div class="custom-control custom-checkbox">
                    <input type="checkbox" class="custom-control-input" checked="" id="remember">
                    <label class="custom-control-label" for="remember">Remember me</label>
                </div>
            </div> -->
            <div class="form-group text-center">
                <button class="btn btn-primary mb-5" type="submit">Login</button><br>
                <!-- <a href="">Forgot password?</a> --> 
                <br> Don't have an account? <a class="text-body text-underline" href='<c:url value="/sign-up"/>'>Sign up!</a>
            </div>
        </form>
        
	
</body>