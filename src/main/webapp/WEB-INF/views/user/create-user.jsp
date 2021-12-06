<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
<meta charset="UTF-8">
<c:if test="${user.id == null }">
	<title>Create User</title>
</c:if>
<c:if test="${user.id != null }">
	<title>Edit User</title>
</c:if>
<!-- Validate User -->
<script src='<c:url value="assets/validate/validate-create-user.js" />'></script>
</head>

<body>
	<div class="container page__heading-container">
		<div class="page__heading">
			<div class="d-flex align-items-center">
				<div>
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb mb-0">
							<li class="breadcrumb-item"><a href="<c:url value='/home'/>">Home</a></li>
							<li class="breadcrumb-item active" aria-current="page">User
							</li>
							<c:if test="${user.id == null }">
								<li class="breadcrumb-item active" aria-current="page">
								Create User</li>
							</c:if>
							<c:if test="${user.id != null }">
								<li class="breadcrumb-item active" aria-current="page">
								Edit User</li>
							</c:if>
						</ol>
					</nav>
					<c:if test="${user.id == null }">
						<h1 class="m-0">Create User</h1>
					</c:if>
					<c:if test="${user.id != null }">
						<h1 class="m-0">Edit User</h1>
					</c:if>
				</div>
				<div class="ml-auto">
					<a href="" class="btn btn-light"><i
						class="material-icons icon-16pt text-muted mr-1">settings</i>
						Settings</a>
				</div>
			</div>
		</div>
	</div>

	<div class="container page__container">
		<div class="col-sm-12">
			<c:if test="${not empty message}">
				<div class="alert alert-dismissible bg-${alert } text-white border-0 fade show">
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					${message}
				</div>
			</c:if>
		</div>
		<form method="post" action="<c:url value="/create-user"/>" id="userForm" onsubmit="return validateUserForm()">
			<div class="form-group">
				<label class="col-sm-5 control-label no-padding-right">Name</label>
				<div class="col-sm-7">
					<input type="text" class="form-control" name="name" value="${user.name }" placeholder="John"/>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-5 control-label no-padding-right">Email</label>
				<div class="col-sm-7">
					<input type="email" class="form-control" name="email" value="${user.email }" placeholder="john@gmail.com"/>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-5 control-label no-padding-right">Password</label>
				<div class="col-sm-7">
					<input type="password" class="form-control" name="password" value="${user.password }" placeholder="Enter your password"/>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-5 control-label no-padding-right">Phone</label>
				<div class="col-sm-7">
					<input type="text" class="form-control" name="phone" value="${user.phone }" placeholder="0123456789"/>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-5 control-label no-padding-right">Address</label>
				<div class="col-sm-7">
					<input type="text" class="form-control" name="address" value="${user.address }" placeholder="123 Trần Hưng Đạo"/>
				</div>
			</div>
			<c:if test="${login.role.name eq 'ADMIN' }">
				<div class="form-group">
					<label class="col-sm-8 control-label no-padding-right">Role</label>
					<div class="col-sm-4">
						<select class="form-control" name="roleId">
							<c:if test="${empty user.role.name }"> <%-- Create User --%>
								<c:forEach var="item" items="${roles }">
									<option value="${item.id }">${item.name }</option>
								</c:forEach>
							</c:if>
							<c:if test="${not empty user.role.name }"> <%-- Edit User --%>
								<c:forEach var="item" items="${roles }">
									<c:if test="${user.role.name eq item.name }">
										<option value="${item.id }" selected="selected">${item.name }
										</option>
									</c:if>
									<c:if test="${user.role.name ne item.name }">
										<option value="${item.id }">${item.name }</option>
									</c:if>
								</c:forEach>
							</c:if>
						</select>
					</div>
				</div>
			</c:if>
			<div class="col-sm-12">
				<c:if test="${user.id == null }">
					<input type="submit" class="btn btn-primary" value="Create User">
				</c:if>
				<c:if test="${user.id != null }">
					<input type="hidden" name="id" value="${user.id }" />
					<input type="submit" class="btn btn-primary" value="Edit User">
				</c:if>
			</div>
		</form>
	</div>
</body>