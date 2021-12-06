<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<head>
<meta charset="UTF-8">
<title>Manage Project</title>
</head>

<body>
	<div class="container page__heading-container">
	    <div class="page__heading">
	        <div class="d-flex align-items-center">
	            <div>
	                <nav aria-label="breadcrumb">
	                    <ol class="breadcrumb mb-0">
	                        <li class="breadcrumb-item"><a href="#">Home</a></li>
	                        <li class="breadcrumb-item active" aria-current="page">
	                            Project
	                        </li>
	                        <li class="breadcrumb-item active" aria-current="page">
	                            Manage Project
	                        </li>
	                    </ol>
	                </nav>
	                <h1 class="m-0">Manage Project</h1>
	            </div>
	            <div class="ml-auto">
	                <a href="" class="btn btn-light"><i class="material-icons icon-16pt text-muted mr-1">settings</i>
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
									<th>Description</th>
									<th>Start Date</th>
									<th>End Date</th>
									<th>Create By</th>
									<th style="width: 20px;">Edit</th>
									<th style="width: 20px;">Delete</th>
								</tr>
							</thead>
							<tbody class="list" id="staff02">
								<c:forEach var="project" items="${projects}">
									<c:if test="${login.role.name eq 'LEADER' && project.user.email eq login.email}">
										<tr>
											<td>${project.name}</td>
											<td>${project.description}</td>
											<td>${project.startDate}</td>
											<td>${project.endDate}</td>
											<td>${project.user.email }</td>
											<td>
												<a type="button" class="btn btn-secondary" data-toggle="tooltip" title='Edit Project'
												   href="<c:url value='/create-project?id=${project.id }'/>">
		                                        	<i class="fas fa-edit"></i>
		                                    	</a>
											</td>
											<td>
												<form action="<c:url value='/manage-project'/>">
													<input type="hidden" name="id" value="${project.id }">
													<button type="submit" class="btn btn-danger" data-toggle="tooltip" title='Delete Project'>
			                                       		<i class="fas fa-times"></i>
			                                  		</button>
		                                  		</form>
											</td>
										</tr>
									</c:if>
									
									<c:if test="${login.role.name eq 'ADMIN'}">
										<tr>
											<td>${project.name}</td>
											<td>${project.description}</td>
											<td>${project.startDate}</td>
											<td>${project.endDate}</td>
											<td>${project.user.email }</td>
											<td>
												<a type="button" class="btn btn-secondary" data-toggle="tooltip" title='Edit Project'
												   href="<c:url value='/create-project?id=${project.id }'/>">
		                                        	<i class="fas fa-edit"></i>
		                                    	</a>
											</td>
											<td>
												<form action="<c:url value='/manage-project'/>">
													<input type="hidden" name="id" value="${project.id }">
													<button type="submit" class="btn btn-danger" data-toggle="tooltip" title='Delete Project'>
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