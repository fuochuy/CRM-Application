<%@page import="cybersoft.javabackend.crm.util.UrlConst"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="cybersoft.javabackend.crm.service.UserService"%>
<%@page import="cybersoft.javabackend.crm.entity.User"%>
<%@page import="cybersoft.javabackend.crm.entity.Role"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container page__heading-container">
            <div class="page__heading">
                <div class="d-flex align-items-center">
                    <div>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb mb-0">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item"><a href="#">User</a></li>
                                <li class="breadcrumb-item active" aria-current="page">
                                    User List
                                </li>
                            </ol>
                        </nav>
                        <h1 class="m-0">User List</h1>
                    </div>
                    <div class="ml-auto">
                        <a href="" class="btn btn-light"><i class="material-icons icon-16pt text-muted mr-1">settings</i>
            Settings</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Breadcrumb -->
        <div class="table-responsive">
                <table class="table">
                  <thead>
                    <tr>
                      <th>Họ tên</th>
                      <th>Email</th>
                      <th>Điện thoại</th>
                      <th>Địa chỉ</th>
                      <th>Chức vụ</th>
                      <th>Acction</th>
                    </tr>
                  </thead>
                  <tbody>
                   
                    <% List<User> list  = (List<User>) request.getAttribute("users"); %>
                    <%for( int i=0; i< list.size(); i++ ){ %>
                   
                       <tr>
                             <td><%= list.get(i).getName() %> </td>
                             <td><%= list.get(i).getEmail() %> </td>
                             <td><%= list.get(i).getPhone() %> </td>
                             <td><%= list.get(i).getAddress()%></td>
                             <td><%= list.get(i).getRole().getName() %></td>
                             <td> 
                             	
                                 <a href="" style="display: inline-block"><button class="btn btn-warning">Sửa</button></a>
                              	<a href="<%= request.getContextPath() + UrlConst.DELETEUSER%>?user_id=<%=list.get(i).getId() %>" style="display: inline-block"><button class="btn btn-info">Xóa</button></a>
                             </td>
                        </tr>
                      <%} %>
                    
        
                  </tbody>
                </table>
           </div>
            
</body>
</html>