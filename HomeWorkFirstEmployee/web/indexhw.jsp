<%@include file="headerhwf.jsp" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.Employee" %>
<%@page import="dao.EmpDao" %>
<%@page import="java.util.*" %>

<%
List<Employee> list=EmpDao.getAllEmp();
request.setAttribute("list",list);

%>

<div class="container my-3 py-2">

    <h1 class="text-primary text-center">All Employees</h1>


    <table class="table table-striped mb-3">

        <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Name</th>
                <th scope="col">Post</th>
                <th scope="col">Salary</th>
                <th scope="col">Action</th>
                
            </tr>
            
        </thead>
        <tbody>
            
            <c:forEach items="${list}" var="s">
                <tr>
                    <td>${s.getId()}</td>
                    <td>${s.getName()}</td>
                    <td>${s.getPost()}</td>
                    <td>${s.getSalary()}</td>
                    <td>
                        
                        <button type="submit" class="btn btn-primary">Edit</button>
                        <button type="submit" class="btn btn-warning">Delete</button>
                    </td>
                </tr>
                
            </c:forEach>
        </tbody>
    </table>

</div>





<%@include file="footerhwf.jsp" %>