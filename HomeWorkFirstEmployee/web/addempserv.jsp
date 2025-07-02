<%@include file="headerhwf.jsp" %>


<fieldset class="bg-success text-warning"><legend class="container">Registration Form</legend>
    <div class="container">
        <form action="empServelet" method="post">
            <input type="hidden" name="action" value="add">
            
            <!-- first row start -->
            <div class="row mb-3">
                <div class="col-md-5">
                    <label class="form-label">Name <small class="text-danger">*</small></label>
                    <input type="text" class="form-control" id="name" name="name" placeholder="Rejaul Karim" required>
                </div>
                <div class="col-md-1 offset-md-1">
                    <hr class="vr h-100">
                </div>
                <div class="col-md-5">
                    <label class="form-label">Post <small class="text-danger">*</small></label> <br>                   
                    <select name="post" required>
                        <option disabled>--Select One--</option>
                        <option value="Manager">Manager</option>
                        <option value="Asst.Manager" >Asst. Manager</option>
                        <option value="SeniorEmployee" >Senior Employee</option>
                        <option value="Employee" >Employee</option>
                        <option value="Operator" >Operator</option>
                    </select>
                </div>
            </div> <!-- first row start -->
            <!-- second row -->
            <div class="row mb-3">
                <div class="col-md-5">
                    <label class="form-label">Salary</label>
                    <input type="number" class="form-control" id="salary" name="salary">
                </div>
                <div class="col-md-1 offset-md-1">
                    <hr class="vr h-100">
                </div>
                <div class="col-md-5">
                    <!--                    <label class="form-label">Password </label>
                                        <input type="password" class="form-control" placeholder="********">-->
                    <input type="submit" value="save" class="btn btn-primary mt-3">
                </div>
            </div><!-- second row -->




            
        </form>
    </div>
</fieldset>



<%@include file="footerhwf.jsp" %>