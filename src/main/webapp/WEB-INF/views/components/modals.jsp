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
                             Modals
                         </li>
                     </ol>
                 </nav>
                 <h1 class="m-0">Modals</h1>
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
             <div class="card">
                 <div class="card-header card-header-large bg-white">
                     <h4 class="card-header__title">Bootstrap</h4>
                 </div>
                 <div class="card-body button-list">
                     <p>A rendered modal with header, body, and set of actions in the footer.</p>
                     <button type="button" class="btn btn-primary d-inline-flex" data-toggle="modal" data-target="#modal-standard">Standard Modal</button>
                     <button type="button" class="btn btn-info d-inline-flex" data-toggle="modal" data-target="#modal-large">Large Modal</button>
                     <button type="button" class="btn btn-success d-inline-flex" data-toggle="modal" data-target="#modal-small">Small Modal</button>
                 </div>
             </div>
             <div class="card">
                 <div class="card-header card-header-large bg-white">
                     <h4 class="card-header__title">Alerts</h4>
                 </div>
                 <div class="card-body button-list">
                     <p>Show different contexual alert messages using modal component.</p>
                     <button type="button" class="btn btn-success d-inline-flex" data-toggle="modal" data-target="#modal-success">Success Alert</button>
                     <button type="button" class="btn btn-info d-inline-flex" data-toggle="modal" data-target="#modal-info">Info Alert</button>
                     <button type="button" class="btn btn-warning d-inline-flex" data-toggle="modal" data-target="#modal-warning">Warning Alert</button>
                     <button type="button" class="btn btn-danger d-inline-flex" data-toggle="modal" data-target="#modal-danger">Error Alert</button>
                 </div>
             </div>
         </div>
         <div class="col-lg">
             <div class="card">
                 <div class="card-header card-header-large bg-white">
                     <h4 class="card-header__title">Pages</h4>
                 </div>
                 <div class="card-body button-list">
                     <p>Examples of modals with custom content.</p>
                     <button type="button" class="btn btn-primary d-inline-flex" data-toggle="modal" data-target="#modal-signup">Sign Up Modal</button>
                     <button type="button" class="btn btn-info d-inline-flex" data-toggle="modal" data-target="#modal-login">Login Modal</button>
                 </div>
             </div>
             <div class="card">
                 <div class="card-header card-header-large bg-white">
                     <h4 class="card-header__title">Vertically Centered</h4>
                 </div>
                 <div class="card-body button-list">
                     <p>By default, modals will be positioned at the top of the page, but you can change this to vertically centered by adding the <code>.modal-dialog-centered</code> class to the <code>&lt;div class=&quot;modal-dialog&quot;&gt;...&lt;/div&gt;</code>                                    element.</p>

                     <button type="button" class="btn btn-secondary d-inline-flex" data-toggle="modal" data-target="#modal-center">Vertically Centered Modal</button>
                 </div>
             </div>
         </div>
     </div>
     <!-- END Page Content -->
 </div>
</body>
</html>