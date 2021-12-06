<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
<meta charset="UTF-8">
<title>User List</title>
</head>

<body>
	<div class="container page__heading-container">
		<div class="page__heading">
			<div class="d-flex align-items-center">
				<div>
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb mb-0">
							<li class="breadcrumb-item"><a href="#">Home</a></li>
							<li class="breadcrumb-item active" aria-current="page">User
							</li>
							<li class="breadcrumb-item active" aria-current="page">User
								List</li>
						</ol>
					</nav>
					<h1 class="m-0">User List</h1>
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
		<!-- Page Content -->
		<div class="card card-form">
			<div class="row no-gutters">
				<div class="col-lg-12 card-form__body border-left">

					<div data-toggle="lists" data-lists-values='["js-lists-values-employee-name"]'>

						<table class="table mb-0 thead-border-top-0">
							<thead>
								<tr>
									<th>Name</th>
									<th>Role</th>
									<th>Email</th>
									<th>Phone</th>
									<th>Address</th>
									<th style="width: 20px;">Edit</th>
									<th style="width: 20px;">Delete</th>
								</tr>
							</thead>
							<tbody class="list" id="staff02">
								<c:forEach var="user" items="${users}">
										<c:if test="${login.role.name eq 'LEADER' && user.role.name ne 'ADMIN' && user.role.name ne 'LEADER'}">
											<tr>
												<td>${user.name}</td>
												<td><span class="badge badge-success">${user.role.name }</span></td>
												<td>${user.email}</td>
												<td>${user.phone}</td>
												<td>${user.address}</td>
												<td>
													<a type="button" class="btn btn-secondary" data-toggle="tooltip" title='Edit User'
													   href="<c:url value='/create-user?id=${user.id }'/>">
			                                        	<i class="fas fa-edit"></i>
			                                    	</a>
												</td>
												<td>
													<form action="<c:url value='/user-list'/>">
														<input type="hidden" name="id" value="${user.id }">
														<button type="submit" class="btn btn-danger" data-toggle="tooltip" title='Delete User'>
				                                       		<i class="fas fa-times"></i>
				                                  		</button>
			                                  		</form>
												</td>
											</tr>
										</c:if>
										
										<c:if test="${login.role.name eq 'ADMIN'}">
											<tr>
												<td>${user.name}</td>
												<c:choose>
													<c:when test="${user.role.name eq 'ADMIN' }">
														<td><span class="badge badge-warning">${user.role.name }</span></td>
													</c:when>
													<c:when test="${user.role.name eq 'LEADER' }">
														<td><span class="badge badge-primary">${user.role.name }</span></td>
													</c:when>
													<c:when test="${user.role.name eq 'MEMBER' }">
														<td><span class="badge badge-success">${user.role.name }</span></td>
													</c:when>
												</c:choose>
												<td>${user.email}</td>
												<td>${user.phone}</td>
												<td>${user.address}</td>
												<td>
													<a type="button" class="btn btn-secondary" data-toggle="tooltip" title='Edit User'
													   href="<c:url value='/create-user?id=${user.id }'/>">
			                                        	<i class="fas fa-edit"></i>
			                                    	</a>
												</td>
												<td>
													<form action="<c:url value='/user-list'/>">
														<input type="hidden" name="id" value="${user.id }">
														<button type="submit" class="btn btn-danger" data-toggle="tooltip" title='Delete User'>
				                                       		<i class="fas fa-times"></i>
				                                  		</button>
			                                  		</form>
												</td>
											</tr>
										</c:if>
									</c:forEach>
	
								</tbody>
							</table>
						</div>
				</div>
			</div>
		</div>
		<!-- END Page Content -->

	</div>
</body>