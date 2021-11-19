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
                                    <li class="breadcrumb-item"><a href="#">Components</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">
                                        Pagination
                                    </li>
                                </ol>
                            </nav>
                            <h1 class="m-0">Pagination</h1>
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
                    <div class="col-lg">
                        <div class="card card-body">
                            // content above this line
                            <hr>
                            <div class="d-flex flex-row align-items-center">
                                <div class="form-inline">
                                    View
                                    <select class="custom-select ml-2" style="width: 70px;">
                                        <option value="20" selected>20</option>
                                        <option value="50">50</option>
                                        <option value="100">100</option>
                                        <option value="200">200</option>
                                    </select>
                                </div>
                                <div class="ml-auto">
                                    20 <span class="text-muted">of 100</span> <a href="#" class="icon-muted"><i class="material-icons float-right">arrow_forward</i></a>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header card-header-large bg-white">
                                <h4 class="card-header__title">Pagination Light</h4>
                            </div>
                            <div class="card-body">
                                <div class="pagination-light">


                                    <ul class="pagination ">

                                        <li class="page-item disabled">
                                            <a class="page-link" href="#" aria-label="Previous">
                                                <span aria-hidden="true" class="material-icons">first_page</span>
                                                <span class="sr-only">First</span>
                                            </a>
                                        </li>


                                        <li class="page-item disabled">
                                            <a class="page-link" href="#" aria-label="Previous">
                                                <span aria-hidden="true" class="material-icons">chevron_left</span>
                                                <span class="sr-only">Prev</span>
                                            </a>
                                        </li>


                                        <li class="page-item active">
                                            <a class="page-link" href="#" aria-label="1">
                                                <span>1</span>
                                            </a>
                                        </li>

                                        <li class="page-item">
                                            <a class="page-link" href="#" aria-label="2">
                                                <span>2</span>
                                            </a>
                                        </li>

                                        <li class="page-item">
                                            <a class="page-link" href="#" aria-label="3">
                                                <span>3</span>
                                            </a>
                                        </li>

                                        <li class="page-item">
                                            <a class="page-link" href="#" aria-label="4">
                                                <span>4</span>
                                            </a>
                                        </li>


                                        <li class="page-item">
                                            <a class="page-link" href="#" aria-label="Next">
                                                <span class="sr-only">Next</span>
                                                <span aria-hidden="true" class="material-icons">chevron_right</span>
                                            </a>
                                        </li>


                                        <li class="page-item">
                                            <a class="page-link" href="#" aria-label="Next">
                                                <span class="sr-only">Last</span>
                                                <span aria-hidden="true" class="material-icons">last_page</span>
                                            </a>
                                        </li>

                                    </ul>


                                    <ul class="pagination m-0">


                                        <li class="page-item disabled">
                                            <a class="page-link" href="#" aria-label="Previous">
                                                <span aria-hidden="true" class="material-icons">chevron_left</span>
                                                <span>Prev</span>
                                            </a>
                                        </li>


                                        <li class="page-item active">
                                            <a class="page-link" href="#" aria-label="1">
                                                <span>1</span>
                                            </a>
                                        </li>

                                        <li class="page-item">
                                            <a class="page-link" href="#" aria-label="2">
                                                <span>2</span>
                                            </a>
                                        </li>


                                        <li class="page-item">
                                            <a class="page-link" href="#" aria-label="Next">
                                                <span>Next</span>
                                                <span aria-hidden="true" class="material-icons">chevron_right</span>
                                            </a>
                                        </li>


                                    </ul>

                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header card-header-large bg-white">
                                <h4 class="card-header__title">Pagination Square</h4>
                            </div>
                            <div class="card-body">


                                <ul class="pagination ">

                                    <li class="page-item disabled">
                                        <a class="page-link" href="#" aria-label="Previous">
                                            <span aria-hidden="true" class="material-icons">first_page</span>
                                            <span class="sr-only">First</span>
                                        </a>
                                    </li>


                                    <li class="page-item disabled">
                                        <a class="page-link" href="#" aria-label="Previous">
                                            <span aria-hidden="true" class="material-icons">chevron_left</span>
                                            <span class="sr-only">Prev</span>
                                        </a>
                                    </li>


                                    <li class="page-item active">
                                        <a class="page-link" href="#" aria-label="1">
                                            <span>1</span>
                                        </a>
                                    </li>

                                    <li class="page-item">
                                        <a class="page-link" href="#" aria-label="2">
                                            <span>2</span>
                                        </a>
                                    </li>

                                    <li class="page-item">
                                        <a class="page-link" href="#" aria-label="3">
                                            <span>3</span>
                                        </a>
                                    </li>

                                    <li class="page-item">
                                        <a class="page-link" href="#" aria-label="4">
                                            <span>4</span>
                                        </a>
                                    </li>


                                    <li class="page-item">
                                        <a class="page-link" href="#" aria-label="Next">
                                            <span class="sr-only">Next</span>
                                            <span aria-hidden="true" class="material-icons">chevron_right</span>
                                        </a>
                                    </li>


                                    <li class="page-item">
                                        <a class="page-link" href="#" aria-label="Next">
                                            <span class="sr-only">Last</span>
                                            <span aria-hidden="true" class="material-icons">last_page</span>
                                        </a>
                                    </li>

                                </ul>


                                <ul class="pagination m-0">


                                    <li class="page-item disabled">
                                        <a class="page-link" href="#" aria-label="Previous">
                                            <span aria-hidden="true" class="material-icons">chevron_left</span>
                                            <span>Prev</span>
                                        </a>
                                    </li>


                                    <li class="page-item active">
                                        <a class="page-link" href="#" aria-label="1">
                                            <span>1</span>
                                        </a>
                                    </li>

                                    <li class="page-item">
                                        <a class="page-link" href="#" aria-label="2">
                                            <span>2</span>
                                        </a>
                                    </li>


                                    <li class="page-item">
                                        <a class="page-link" href="#" aria-label="Next">
                                            <span>Next</span>
                                            <span aria-hidden="true" class="material-icons">chevron_right</span>
                                        </a>
                                    </li>


                                </ul>

                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header card-header-large bg-white">
                                <h4 class="card-header__title">Pagination Rounded</h4>
                            </div>
                            <div class="card-body">
                                <div class="pagination-rounded">


                                    <ul class="pagination ">

                                        <li class="page-item disabled">
                                            <a class="page-link" href="#" aria-label="Previous">
                                                <span aria-hidden="true" class="material-icons">first_page</span>
                                                <span class="sr-only">First</span>
                                            </a>
                                        </li>


                                        <li class="page-item disabled">
                                            <a class="page-link" href="#" aria-label="Previous">
                                                <span aria-hidden="true" class="material-icons">chevron_left</span>
                                                <span class="sr-only">Prev</span>
                                            </a>
                                        </li>


                                        <li class="page-item active">
                                            <a class="page-link" href="#" aria-label="1">
                                                <span>1</span>
                                            </a>
                                        </li>

                                        <li class="page-item">
                                            <a class="page-link" href="#" aria-label="2">
                                                <span>2</span>
                                            </a>
                                        </li>

                                        <li class="page-item">
                                            <a class="page-link" href="#" aria-label="3">
                                                <span>3</span>
                                            </a>
                                        </li>

                                        <li class="page-item">
                                            <a class="page-link" href="#" aria-label="4">
                                                <span>4</span>
                                            </a>
                                        </li>


                                        <li class="page-item">
                                            <a class="page-link" href="#" aria-label="Next">
                                                <span class="sr-only">Next</span>
                                                <span aria-hidden="true" class="material-icons">chevron_right</span>
                                            </a>
                                        </li>


                                        <li class="page-item">
                                            <a class="page-link" href="#" aria-label="Next">
                                                <span class="sr-only">Last</span>
                                                <span aria-hidden="true" class="material-icons">last_page</span>
                                            </a>
                                        </li>

                                    </ul>


                                    <ul class="pagination m-0">


                                        <li class="page-item disabled">
                                            <a class="page-link" href="#" aria-label="Previous">
                                                <span aria-hidden="true" class="material-icons">chevron_left</span>
                                                <span>Prev</span>
                                            </a>
                                        </li>


                                        <li class="page-item active">
                                            <a class="page-link" href="#" aria-label="1">
                                                <span>1</span>
                                            </a>
                                        </li>

                                        <li class="page-item">
                                            <a class="page-link" href="#" aria-label="2">
                                                <span>2</span>
                                            </a>
                                        </li>


                                        <li class="page-item">
                                            <a class="page-link" href="#" aria-label="Next">
                                                <span>Next</span>
                                                <span aria-hidden="true" class="material-icons">chevron_right</span>
                                            </a>
                                        </li>


                                    </ul>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END Page Content -->
</body>
</html>