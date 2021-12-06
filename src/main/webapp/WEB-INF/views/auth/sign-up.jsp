<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>

<head>
<meta charset="UTF-8">
<title>Sign Up</title>
<!-- Validate User -->
<script src='<c:url value="assets/validate/validate-create-user.js" />'></script>
</head>
<body>
	<h4 class="m-0">Sign up!</h4>
        <p class="mb-5">Create an account now!</p>
		<c:if test="${not empty message}">
				<div class="alert alert-dismissible bg-${alert } text-white border-0 fade show">
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					${message}
				</div>
		</c:if>
        <form action="<c:url value='/sign-up'/>" method="post" id="userForm" onsubmit="return validateUserForm()" novalidate>
            <div class="form-group">
                <label class="text-label" for="name_2">Name:</label>
                <div class="input-group input-group-merge">
                    <input id="name_2" type="text" class="form-control form-control-prepended" placeholder="John" name="name">
                    <div class="input-group-prepend">
                        <div class="input-group-text">
                            <span class="far fa-user"></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="text-label" for="email_2">Email Address:</label>
                <div class="input-group input-group-merge">
                    <input id="email_2" type="email" class="form-control form-control-prepended" placeholder="john@gmail.com" name="email">
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
                    <input id="password_2" type="password" class="form-control form-control-prepended" placeholder="Enter your password" name="password">
                    <div class="input-group-prepend">
                        <div class="input-group-text">
                            <span class="fas fa-key"></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="text-label" for="name_2">Phone:</label>
                <div class="input-group input-group-merge">
                    <input id="phone_2" type="text" class="form-control form-control-prepended" placeholder="0123456789" name="phone">
                    <div class="input-group-prepend">
                        <div class="input-group-text">
                            <span class="fas fa-phone-square-alt"></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="text-label" for="name_2">Address:</label>
                <div class="input-group input-group-merge">
                    <input id="address_2" type="text" class="form-control form-control-prepended" placeholder="123 Trần Hưng Đạo Quận 1 TP.HCM" name="address">
                    <div class="input-group-prepend">
                        <div class="input-group-text">
                            <span class="far fa-address-card"></span>
                        </div>
                    </div>
                </div>
            </div>
            <!-- <div class="form-group mb-5">
                <div class="custom-control custom-checkbox">
                    <input type="checkbox" checked class="custom-control-input" id="terms" />
                    <label class="custom-control-label" for="terms">I accept <a href="#">Terms and Conditions</a></label>
                </div>
            </div> -->
            <div class="form-group text-center">
                <button class="btn btn-primary mb-2" type="submit">Create Account</button><br>
                <a class="text-body text-underline" href="<c:url value='sign-in'/>">Have an account? Login</a>
            </div>
        </form>
      
</body>