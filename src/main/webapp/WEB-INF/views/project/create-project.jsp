<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<head>
<meta charset="UTF-8">
<c:if test="${project.id == null }">
	<title>Create Project</title>
</c:if>
<c:if test="${project.id != null }">
	<title>Edit Project</title>
</c:if>
<!-- Validate Project -->
<script src='<c:url value="assets/validate/validate-create-project.js" />'></script>
</head>z
<body>
	<div class="container page__heading-container">
	    <div class="page__heading">
	        <div class="d-flex align-items-center">
	            <div>
	                <nav aria-label="breadcrumb">
	                    <ol class="breadcrumb mb-0">
	                        <li class="breadcrumb-item"><a href="<c:url value='/home'/>">Home</a></li>
	                        <li class="breadcrumb-item active" aria-current="page">
	                            Project
	                        </li>
	                        <c:if test="${project.id == null }">
								<li class="breadcrumb-item active" aria-current="page">
								Create Project</li>
							</c:if>
							<c:if test="${project.id != null }">
								<li class="breadcrumb-item active" aria-current="page">
								Edit Project</li>
							</c:if>	
	                    </ol>
	                </nav>
	                <c:if test="${project.id == null }">
						<h1 class="m-0">Create Project</h1>
					</c:if>
					<c:if test="${project.id != null }">
						<h1 class="m-0">Edit Project</h1>
					</c:if>
	            </div>
	            <div class="ml-auto">
	                <a href="" class="btn btn-light"><i class="material-icons icon-16pt text-muted mr-1">settings</i>
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
		<form method="post" action="<c:url value="/create-project"/>" id="projectForm" onsubmit="return validateProjectForm()">
			<div class="form-group">
				<label class="col-sm-5 control-label no-padding-right">Name</label>
				<div class="col-sm-7">
					<input type="text" class="form-control" name="name" value="${project.name }"/>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-5 control-label no-padding-right">Description</label>
				<div class="col-sm-7">
					<input type="text" class="form-control" name="description" value="${project.description }"/>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-5 control-label no-padding-right">Start Date</label>
				<div class="col-sm-7">
					<input type="date" class="form-control" name="startDate" value="${project.startDate }"/>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-5 control-label no-padding-right">End Date</label>
				<div class="col-sm-7">
					<input type="date" class="form-control" name="endDate" value="${project.endDate }"/>
				</div>
			</div>

			<c:if test="${project.id != null }">
			<div class="form-group">
				<label class="col-sm-5 control-label no-padding-right">Create By</label>
				<div class="col-sm-7">
					<input type="text" class="form-control" value="${project.user.email }" readonly="readonly"/>
				</div>
			</div>
			</c:if>
			
			<div class="col-sm-12">
				<c:if test="${project.id == null }">
					<input type="submit" class="btn btn-primary" value="Create Project">
				</c:if>
				<c:if test="${project.id != null }">
					<input type="hidden" name="id" value="${project.id }" />
					<input type="submit" class="btn btn-primary" value="Edit Project">
				</c:if>
			</div>
		</form>
	</div>
</body>