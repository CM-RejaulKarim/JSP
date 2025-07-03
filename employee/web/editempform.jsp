<%@page import="model.Employee" %>
<%@page  import="dao.EmpDao" %>

<%
String id = request.getParameter("id");
Employee e= EmpDao.getEmpById(Integer.parseInt(id));
%>


<%@include file="header.jsp" %>


<fieldset class="bg-success text-warning"><legend class="container">Registration Form</legend>
    <div class="container">
        <form action="editemp.jsp" method="post">
            <input type="hidden" name="id" value="<%=e.getId()%>" />
            
            <!-- first row start -->
            <div class="row mb-3">
                <div class="col-md-5">
                    <label class="form-label">Name <small class="text-danger">*</small></label>
                    <input type="text" class="form-control" id="name" name="name" value="<%=e.getName()%>">
                </div>
                <div class="col-md-1 offset-md-1">
                    <hr class="vr h-100">
                </div>
                <div class="col-md-5">
                    <label class="form-label">Post <small class="text-danger">*</small></label> <br>   
                    <input type="text" class="form-control" id="post" name="post" value="<%=e.getPost()%>" >
                    
<!--                  
                </div>
            </div> <!-- first row start -->
            <!-- second row -->
            <div class="row mb-3">
                <div class="col-md-5">
                    <label class="form-label">Salary</label>
                    <input type="number" class="form-control" id="salary" name="salary" value="<%=e.getSalary()%>">
                </div>
                <div class="col-md-1 offset-md-1">
                    <hr class="vr h-100">
                </div>
                <div class="col-md-5">
                    <!--                    <label class="form-label">Password </label>
                                        <input type="password" class="form-control" placeholder="********">-->
                    <input type="submit" value="Submit" class="btn btn-primary mt-3">
                    <input type="reset" value="Reset" class="btn btn-danger mt-3">
                </div>
            </div><!-- second row -->




            
        </form>
    </div>
</fieldset>



<%@include file="footer.jsp" %>