<%@include file="header.jsp" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.Student" %>
<%@page import="dao.StudentDao" %>
<%@page import="java.util.*" %>


<%
List<Student> list = StudentDao.getAllStudents();
request.setAttribute("list", list);

%>

<div class="container">

    <h1 class="text-primary text-center">All Students</h1>


    <table>

        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Cell</th>
                <th>Subject</th>
                <th>Gender</th>
                
            </tr>
            
        </thead>
        <tbody>
            
            <c:forEach items="${list}" var="s">
                <tr>
                    <td>${s.getId}</td>
                    <td>${s.getName}</td>
                    <td>${s.getEmail}</td>
                    <td>${s.getCell}</td>
                    <td>${s.getSubject}</td>
                    <td>${s.getGender}</td>
                    <td>
                        
                        <button type="submit" class="btn btn-primary">Edit</button>
                        <button type="submit" class="btn btn-warning">Delete</button>
                    </td>
                </tr>
                
            </c:forEach>
        </tbody>
    </table>

</div>


<%@include file="footer.jsp" %>