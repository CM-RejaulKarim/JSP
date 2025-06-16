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

    <h1 class="text-success text-center">All Employees</h1>


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
            
            <c:forEach items="${list}" var="e">
                <tr>
                    <td>${e.getId()}</td>
                    <td>${e.getName()}</td>
                    <td>${e.getPost()}</td>
                    <td>${e.getSalary()}</td>
                    <td>
                        <a href="editempform.jsp?id=${e.id}" class="btn btn-primary" >Edit</a>
                        <a href="deleteemp.jsp?id=${e.id}" class="btn btn-warning" 
                           onclick="return confirm('Are You Sure Want To Delete This Employee?');">Delete</a>
                    </td>
                </tr>
                
            </c:forEach>
        </tbody>
    </table>

</div>





<%@include file="footerhwf.jsp" %>