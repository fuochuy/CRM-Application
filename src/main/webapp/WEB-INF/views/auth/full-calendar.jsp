<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Breadcrumb -->
            <div class="container page__heading-container">
                <div class="page__heading">
                    <div class="d-flex align-items-center">
                        <div>
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb mb-0">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">
                                        Event Calendar
                                    </li>
                                </ol>
                            </nav>
                            <h1 class="m-0">Event Calendar</h1>
                        </div>
                        <div class="ml-auto">
                            <a href="" class="btn btn-light"><i class="material-icons icon-16pt text-muted mr-1">settings</i>
                Settings</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Breadcrumb -->

            <div class="container page__container">
                <!-- Page Content -->
                <div class="row">
                    <div class="col-lg-9">
                        <div class="card card-body">
                            <div id="calendar" data-toggle="fullcalendar"></div>
                        </div>
                    </div>
                    <!-- end col -->

                    <div class="col-lg-3">
                        <div id="external-events">
                            <p class="text-muted">Drag and drop your event or click in the calendar.</p>
                            <div class="external-event bg-success" data-class="bg-success">
                                <i class="mr-2 material-icons">drag_handle</i>
                                <span class="external-event__title">New Theme Release</span>
                            </div>
                            <div class="external-event bg-info" data-class="bg-info">
                                <i class="mr-2 material-icons">drag_handle</i>
                                <span class="external-event__title">My Event</span>
                            </div>
                            <div class="external-event bg-warning" data-class="bg-warning">
                                <i class="mr-2 material-icons">drag_handle</i>
                                <span class="external-event__title">Meet manager</span>
                            </div>
                            <div class="external-event bg-danger" data-class="bg-danger">
                                <i class="mr-2 material-icons">drag_handle</i>
                                <span class="external-event__title">Create New theme</span>
                            </div>
                        </div>

                        <!-- checkbox -->
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="drop-remove">
                            <label class="custom-control-label" for="drop-remove">Remove after drop</label>
                        </div>
                    </div>
                    <!-- end col-->
                </div>
                <!-- end row -->
                <!-- END Page Content -->
            </div>
</body>
</html>