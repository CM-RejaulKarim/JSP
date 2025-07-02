
<%@page import="model.Employee" %>

<%@include file="headerhwf.jsp" %>


<%
    Employee e = (Employee) request.getAttribute("e");
%>



<fieldset class="bg-success text-warning"><legend class="container">Registration Form</legend>
    <div class="container">
        <form action="empServelet" method="post">
            <input type="hidden" name="id" value="<%= e.getId() %>" />

            <!-- first row start -->
            <div class="row mb-3">
                <div class="col-md-5">
                    <label class="form-label">Name <small class="text-danger">*</small></label>
                    <input type="text" class="form-control" id="name" name="name" value="<%=e.getName()%>" placeholder="Rejaul Karim" required>
                </div>
                <div class="col-md-1 offset-md-1">
                    <hr class="vr h-100">
                </div>
                <div class="col-md-5">
                    <label class="form-label">Post <small class="text-danger">*</small></label> <br>                   
                    <select name="post" id="post" required>
                        <option disabled>--Select One--</option>
                        <option value="Manager" <%= "Manager".equals(e.getPost()) ? "selected" : "" %>>Manager</option>
                        <option value="Asst.Manager" <%= "Asst.Manager".equals(e.getPost()) ? "selected" : "" %>>Asst. Manager</option>
                        <option value="SeniorEmployee" <%= "SeniorEmployee".equals(e.getPost()) ? "selected" : "" %>>Senior Employee</option>
                        <option value="Employee" <%= "Employee".equals(e.getPost()) ? "selected" : "" %>>Employee</option>
                        <option value="Operator" <%= "Operator".equals(e.getPost()) ? "selected" : "" %>>Operator</option>
                    </select>
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






<%@include file="footerhwf.jsp" %>

