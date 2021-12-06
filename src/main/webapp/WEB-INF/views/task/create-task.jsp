<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
<meta charset="UTF-8">
<c:if test="${task.id == null }">
	<title>Create Task</title>
</c:if>
<c:if test="${task.id != null }">
	<title>Edit Task</title>
</c:if>
<!-- Validate Task -->
<script src='<c:url value="assets/validate/validate-create-task.js" />'></script>
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
							<c:if test="${task.id == null }">
								<li class="breadcrumb-item active" aria-current="page">
									Create Task</li>
							</c:if>
							<c:if test="${task.id != null }">
								<li class="breadcrumb-item active" aria-current="page">
									Edit Task</li>
							</c:if>
						</ol>
					</nav>
					<c:if test="${task.id == null }">
						<h1 class="m-0">Create Task</h1>
					</c:if>
					<c:if test="${task.id != null }">
						<h1 class="m-0">Edit Task</h1>
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
				<div
					class="alert alert-dismissible bg-${alert } text-white border-0 fade show">
					<button type="button" class="close" data-dismiss="alert"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					${message}
				</div>
			</c:if>
		</div>
		<form method="post" action="<c:url value="/create-task"/>"
			id="taskForm" onsubmit="return validateTaskForm()">

			<c:if test="${login.role.name eq 'MEMBER'}">
				<div class="form-group">
					<label class="col-sm-5 control-label no-padding-right">Name</label>
					<div class="col-sm-7">
						<input type="text" class="form-control" name="name"
							value="${task.name }" disabled="disabled" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-5 control-label no-padding-right">Description</label>
					<div class="col-sm-7">
						<input type="text" class="form-control" name="description"
							value="${task.description }" disabled="disabled" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-5 control-label no-padding-right">Assignee
						Email</label>
					<div class="col-sm-7">
						<select class="form-control" name="assignee" disabled="disabled">
							<c:if test="${empty task.id }">
								<%-- Create User --%>
								<c:forEach var="item" items="${users }">
									<option value="${item.id }">${item.email }</option>
								</c:forEach>
							</c:if>
							<c:if test="${not empty task.id }">
								<%-- Edit User --%>
								<c:forEach var="item" items="${users }">
									<c:if test="${task.user.email eq item.email }">
										<option value="${item.id }" selected="selected">${item.email }
										</option>
									</c:if>
									<c:if test="${task.user.email ne item.email }">
										<option value="${item.id }">${item.email }</option>
									</c:if>
								</c:forEach>
							</c:if>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-5 control-label no-padding-right">Project</label>
					<div class="col-sm-7">
						<select class="form-control" name="projectId" disabled="disabled">
							<c:if test="${empty task.id}">
								<%-- Create User --%>
								<c:forEach var="item" items="${projects }">
									<option value="${item.id }">${item.name }</option>
								</c:forEach>
							</c:if>
							<c:if test="${not empty task.id }">
								<%-- Edit User --%>
								<c:forEach var="item" items="${projects }">
									<c:if test="${task.projectId eq item.id }">
										<option value="${item.id }" selected="selected">${item.name }</option>
									</c:if>

									<c:if test="${task.projectId ne item.id }">
										<option value="${item.id }">${item.name }</option>
									</c:if>
								</c:forEach>
							</c:if>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-5 control-label no-padding-right">Start
						Date</label>
					<div class="col-sm-7">
						<input type="date" class="form-control" name="startDate"
							value="${task.startDate }" disabled="disabled" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-5 control-label no-padding-right">End
						Date</label>
					<div class="col-sm-7">
						<input type="date" class="form-control" name="endDate"
							value="${task.endDate }" disabled="disabled" />
					</div>
				</div>

				<input type="hidden" name="name" value="${task.name }">
				<input type="hidden" name="description" value="${task.description }">
				<input type="hidden" name="assignee" value="${task.assignee }">
				<input type="hidden" name="projectId" value="${task.projectId }">
				<input type="hidden" name="startDate" value="${task.startDate }">
				<input type="hidden" name="endDate" value="${task.endDate }">

			</c:if>


			<c:if test="${login.role.name ne 'MEMBER'}">
				<div class="form-group">
					<label class="col-sm-5 control-label no-padding-right">Name</label>
					<div class="col-sm-7">
						<input type="text" class="form-control" name="name"
							value="${task.name }" placeholder="Enter your name" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-5 control-label no-padding-right">Description</label>
					<div class="col-sm-7">
						<input type="text" class="form-control" name="description"
							value="${task.description }" placeholder="Enter your description" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-5 control-label no-padding-right">Assignee
						Email</label>
					<div class="col-sm-7">
						<select class="form-control" name="assignee">
							<c:if test="${empty task.id }">
								<%-- Create User --%>
								<c:forEach var="item" items="${users }">
									<option value="${item.id }">${item.email }</option>
								</c:forEach>
							</c:if>
							<c:if test="${not empty task.id }">
								<%-- Edit User --%>
								<c:forEach var="item" items="${users }">
									<c:if test="${task.user.email eq item.email }">
										<option value="${item.id }" selected="selected">${item.email }
										</option>
									</c:if>
									<c:if test="${task.user.email ne item.email }">
										<option value="${item.id }">${item.email }</option>
									</c:if>
								</c:forEach>
							</c:if>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-5 control-label no-padding-right">Project</label>
					<div class="col-sm-7">
						<c:if test="${login.role.name eq 'ADMIN'}">
							<select class="form-control" name="projectId">

								<c:if test="${empty task.id}">
									<%-- Create User --%>
									<c:forEach var="item" items="${projects }">
										<option value="${item.id }">${item.name }&nbsp;&nbsp;(${item.startDate }&nbsp;&nbsp;to&nbsp;&nbsp;${item.endDate })</option>
									</c:forEach>
								</c:if>
								<c:if test="${not empty task.id }">
									<%-- Edit User --%>
									<c:forEach var="item" items="${projects }">
										<c:if test="${task.projectId eq item.id }">
											<option value="${item.id }" selected="selected">${item.name }&nbsp;&nbsp;(${item.startDate }&nbsp;&nbsp;to&nbsp;&nbsp;${item.endDate })</option>
										</c:if>

										<c:if test="${task.projectId ne item.id }">
											<option value="${item.id }">${item.name }&nbsp;&nbsp;(${item.startDate }&nbsp;&nbsp;to&nbsp;&nbsp;${item.endDate })</option>										</c:if>
									</c:forEach>
								</c:if>
							</select>
						</c:if>

						<c:if test="${login.role.name eq 'LEADER'}">
							<select class="form-control" name="projectId">
								<c:if test="${empty task.id}">
									<%-- Create User --%>
									<c:forEach var="item" items="${projects }">
										<c:if test="${item.createBy eq login.id}">
											<%-- GET USER WHO CREATED PROJECT --%>
											<option value="${item.id }">${item.name }&nbsp;&nbsp;(${item.startDate }&nbsp;&nbsp;to&nbsp;&nbsp;${item.endDate })</option>
										</c:if>
									</c:forEach>
								</c:if>
								<c:if test="${not empty task.id }">
									<%-- Edit User --%>
									<c:forEach var="item" items="${projects }">
										<c:if test="${item.createBy eq login.id}">
											<%-- GET USER WHO CREATED PROJECT --%>
											<c:if test="${task.projectId eq item.id }">
												<option value="${item.id }" selected="selected">${item.name }&nbsp;&nbsp;(${item.startDate }&nbsp;&nbsp;to&nbsp;&nbsp;${item.endDate })</option>
											</c:if>
										</c:if>
										<c:if test="${task.projectId ne item.id }">
											<c:if test="${item.createBy eq login.id}">
												<%-- GET LEADER WHO CREATED PROJECT --%>
												<option value="${item.id }">${item.name }&nbsp;&nbsp;(${item.startDate }&nbsp;&nbsp;to&nbsp;&nbsp;${item.endDate })</option>
											</c:if>
										</c:if>
									</c:forEach>
								</c:if>
							</select>
						</c:if>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-5 control-label no-padding-right">Start
						Date</label>
					<div class="col-sm-7">
						<input type="date" class="form-control" name="startDate"
							value="${task.startDate }" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-5 control-label no-padding-right">End
						Date</label>
					<div class="col-sm-7">
						<input type="date" class="form-control" name="endDate"
							value="${task.endDate }" />
					</div>
				</div>
			</c:if>

			<div class="form-group">
				<label class="col-sm-5 control-label no-padding-right">Status</label>
				<div class="col-sm-7">
					<select class="form-control" name="statusId">
						<c:if test="${empty task.id }">
							<%-- Create User --%>
							<c:forEach var="item" items="${statuses }">
								<option value="${item.id }">${item.name }</option>
							</c:forEach>
						</c:if>
						<c:if test="${not empty task.id }">
							<%-- Edit User --%>
							<c:forEach var="item" items="${statuses }">
								<c:if test="${task.statusId eq item.id }">
									<option value="${item.id }" selected="selected">${item.name }
									</option>
								</c:if>
								<c:if test="${task.statusId ne item.id }">
									<option value="${item.id }">${item.name }</option>
								</c:if>
							</c:forEach>
						</c:if>
					</select>
				</div>
			</div>

			<div class="col-sm-12">
				<c:if test="${task.id == null }">
					<input type="submit" class="btn btn-primary" value="Create Task">
				</c:if>
				<c:if test="${task.id != null }">
					<input type="hidden" name="id" value="${task.id }" />
					<input type="submit" class="btn btn-primary" value="Edit Task">
				</c:if>
			</div>
		</form>
	</div>
</body>