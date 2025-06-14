
<%@include file="header.jsp" %>


<fieldset><legend><h2>Registration Form</h2></legend>

    <form action="addstudent.jsp" method="post">


        <div><label for="practisebyReja" id="name"><b>Name:</b></label><br>
            <input type="text" class="nph"><br><!-- comment -->
        </div>

        <label for="practisebyReja" id="Phone">Phone:</label><br>
        <input type="text" class="nph"><br>

        <label for="practisebyReja">Email:</label><br>
        <input type="email" class="nph"><br>

        <label for="practisebyReja"><b>Gender:</b></label><br>
        <input type="radio" name="Gender">Male <br>
        <input type="radio" name="Gender">Female <br>
        <input type="radio" name="Gender">Others <br><br>

        <label for="practisebyReja">Subject:</label><br>
        <select name="practisebyReja" id="Subject">
            <option value="">--Select One--</option>
            <option value="" id="jee">jee</option>
            <option value="" id="css">css</option>
            <option value="" id="html">html</option>
            <option value="" id="js">js</option>
            <option value="" id="db">db</option>
        </select><br>


        <button type="submit" class="btn btn-primary">Submit</button>
        <button type="reset" class="btn btn-warning">Reset</button>


    </form></fieldset>

<%@include file="footer.jsp" %>
