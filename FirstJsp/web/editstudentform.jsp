
<%@page import="model.Student" %>
<%@page import="dao.StudentDao" %>

<%
String id = request.getParameter("id");
Student s= StudentDao.getById(Integer.parseInt(id));
%>

<%@include file="header.jsp" %>


<fieldset >

    <div class="container">
        <legend><h2>Edit Student Detail Form</h2></legend>
        
        <form action="editstudent.jsp" method="post">
            <input type="hidden" name="id" value="<%=s.getId()%>" />


        <div><label for="name" id="name"><b>Name:</b></label><br>
            <input type="text" class="nph" id="name" name="name" value="<%=s.getName()%>"><br><!-- comment -->
        </div>

        <label for="email">Email:</label><br>
        <input type="email" class="nph" id="email" name="email" value="<%=s.getEmail()%>"><br>
        
        <label for="cell" id="cell">Cell:</label><br>
        <input type="text" class="nph" id="cell" name="cell" value="<%=s.getCell()%>"><br>

        <label for="gender"><b>Gender:</b></label><br>
        <input type="radio" name="gender" value="Male"
               <%= "Male".equals(s.getGender()) ? "checked" : "" %>>Male <br>
        <input type="radio" name="gender" value="Female"
               <%= "Female".equals(s.getGender()) ? "checked" : "" %>>Female <br>

        <label for="subject">Subject:</label><br>
        <select name="subject" id="Subject">
            <option disabled>--Select One--</option>
            <option value="JEE" <%= "JEE".equals(s.getSubject()) ? "selected" : "" %>>JEE</option>
            <option value="CSS" <%= "CSS".equals(s.getSubject()) ? "selected" : "" %>>CSS</option>
            <option value="HTML" <%= "HTML".equals(s.getSubject()) ? "selected" : "" %>>HTML</option>
            <option value="JS" <%= "JS".equals(s.getSubject()) ? "selected" : "" %>>JS</option>
            <option value="DB" <%= "DB".equals(s.getSubject()) ? "selected" : "" %>>DB</option>
        </select><br>


        <div class="row mt-3 text-center">
            <div class="col-md-2">
                <button type="submit" class="btn btn-success text-center" >Update</button>

            </div>

            <div class="col-md-1">
                <button type="reset" class="btn btn-danger text-center" >Reset</button>

            </div>
        </div>


    </form>
    </div>
    </fieldset>

<%@include file="footer.jsp" %>
