<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
<meta charset="UTF-8">
<title>Task</title>
</head>

<body>
	<div class="container page__heading-container">
		<div class="page__heading">
			<div class="d-flex align-items-center">
				<div>
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb mb-0">
							<li class="breadcrumb-item"><a href="#">Home</a></li>
							<li class="breadcrumb-item active" aria-current="page">Task
							</li>
						</ol>
					</nav>
					<h1 class="m-0">Task</h1>
				</div>
				<c:if test="${login.role.name eq 'ADMIN' || login.role.name eq 'LEADER'}">
					<div class="ml-auto">
						<a href="<c:url value='/create-task'/>" class="btn btn-light"><i class="fa fa-plus"
							aria-hidden="true"></i> &nbsp; Add Task</a>
					</div>
				</c:if>
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
									<th>Assignee</th>
									<th>End Date</th>
									<th>Project</th>
									<th>Status</th>
									<th style="width: 20px;">Edit</th>
									<th style="width: 20px;">Delete</th>
								</tr>
							</thead>
							<tbody class="list" id="staff02">
								<c:forEach var="task" items="${tasks}">
									<c:if test="${login.role.name eq 'LEADER' && task.project.createBy eq login.id}">
										<tr>
											<td>${task.name}</td>
											<td>${task.user.email }</td>
											<td>${task.endDate}</td>
											<td>${task.project.name}</td>
											<c:choose>
													<c:when test="${task.status.name eq 'CHƯA THỰC HIỆN' }">
														<td><span class="badge badge-warning">${task.status.name }</span></td>
													</c:when>
													<c:when test="${task.status.name eq 'ĐANG THỰC HIỆN' }">
														<td><span class="badge badge-primary">${task.status.name }</span></td>
													</c:when>
													<c:when test="${task.status.name eq 'HOÀN THÀNH' }">
														<td><span class="badge badge-success">${task.status.name }</span></td>
													</c:when>
											</c:choose>
											<td>
												<a type="button" class="btn btn-secondary" data-toggle="tooltip" title='Edit Project'
												   href="<c:url value='/create-task?id=${task.id }'/>">
		                                        	<i class="fas fa-edit"></i>
		                                    	</a>
											</td>
											<td>
												<form action="<c:url value='/task-list'/>">
													<input type="hidden" name="id" value="${task.id }">
													<button type="submit" class="btn btn-danger" data-toggle="tooltip" title='Delete Project'>
			                                       		<i class="fas fa-times"></i>
			                                  		</button>
		                                  		</form>
											</td>
										</tr>
									</c:if>
									
									<c:if test="${login.role.name eq 'ADMIN'}">
										<tr>
											<td>${task.name}</td>
											<td>${task.user.email }</td>
											<td>${task.endDate}</td>
											<td>${task.project.name}</td>
											<c:choose>
													<c:when test="${task.status.name eq 'CHƯA THỰC HIỆN' }">
														<td><span class="badge badge-warning">${task.status.name }</span></td>
													</c:when>
													<c:when test="${task.status.name eq 'ĐANG THỰC HIỆN' }">
														<td><span class="badge badge-primary">${task.status.name }</span></td>
													</c:when>
													<c:when test="${task.status.name eq 'HOÀN THÀNH' }">
														<td><span class="badge badge-success">${task.status.name }</span></td>
													</c:when>
											</c:choose>
											<td>
												<a type="button" class="btn btn-secondary" data-toggle="tooltip" title='Edit Task'
												   href="<c:url value='/create-task?id=${task.id }'/>">
		                                        	<i class="fas fa-edit"></i>
		                                    	</a>
											</td>
											<td>
												<form action="<c:url value='/task-list'/>">
													<input type="hidden" name="id" value="${task.id }">
													<button type="submit" class="btn btn-danger" data-toggle="tooltip" title='Delete Task'>
			                                       		<i class="fas fa-times"></i>
			                                  		</button>
		                                  		</form>
											</td>
										</tr>
									</c:if>
									
									<c:if test="${login.role.name eq 'MEMBER' && task.assignee eq login.id}">
										<tr>
											<td>${task.name}</td>
											<td>${task.user.email }</td>
											<td>${task.endDate}</td>
											<td>${task.project.name}</td>
											<c:choose>
													<c:when test="${task.status.name eq 'CHƯA THỰC HIỆN' }">
														<td><span class="badge badge-warning">${task.status.name }</span></td>
													</c:when>
													<c:when test="${task.status.name eq 'ĐANG THỰC HIỆN' }">
														<td><span class="badge badge-primary">${task.status.name }</span></td>
													</c:when>
													<c:when test="${task.status.name eq 'HOÀN THÀNH' }">
														<td><span class="badge badge-success">${task.status.name }</span></td>
													</c:when>
												</c:choose>
											<td>
												<a type="button" class="btn btn-secondary" data-toggle="tooltip" title='Edit Task'
												   href="<c:url value='/create-task?id=${task.id }'/>">
		                                        	<i class="fas fa-edit"></i>
		                                    	</a>
											</td>
											<td>
												<form action="<c:url value='/task-list'/>">
													<input type="hidden" name="id" value="${task.id }">
													<button type="submit" class="btn btn-danger" data-toggle="tooltip" title='Delete Task' disabled="disabled">
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