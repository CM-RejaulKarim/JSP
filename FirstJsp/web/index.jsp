<%@include file="header.jsp" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.Student" %>
<%@page import="dao.StudentDao" %>
<%@page import="java.util.*" %>


<%
List<Student> list = StudentDao.getAllStudent();
request.setAttribute("list", list);

%>

<div class="container my-3 py-2">

    <h1 class="text-success text-center fst-italic">All Students</h1>


    <table class="table table-striped mb-3">

        <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Name</th>
                <th scope="col">Email</th>
                <th scope="col">Cell</th>
                <th scope="col">Subject</th>
                <th scope="col">Gender</th>
                <th scope="col">Action</th>
                
            </tr>
            
        </thead>
        <tbody>
            
            <c:forEach items="${list}" var="s">
                <tr>
                    <td>${s.getId()}</td>
                    <td>${s.getName()}</td>
                    <td>${s.getEmail()}</td>
                    <td>${s.getCell()}</td>
                    <td>${s.getSubject()}</td>
                    <td>${s.getGender()}</td>
                    <td>
                        
                        <a href="editstudentform.jsp?id=${s.id}" class="btn btn-primary">Edit</a>
                        <a href="deleteStudent.jsp?id=${s.id}" class="btn btn-warning"
                           onclick="return confirm('Are you sure you want to delete this student?');">Delete</a>
                    </td>
                </tr>
                
            </c:forEach>
        </tbody>
    </table>

</div>


<%@include file="footer.jsp" %>