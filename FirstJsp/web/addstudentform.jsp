
<%@include file="header.jsp" %>


<fieldset >

    <div class="container">
        <legend><h2>Registration Form</h2></legend>

        <form action="addstudent.jsp" method="post">


            <div><label for="practisebyReja" id="name"><b>Name:</b></label><br>
                <input type="text" class="nph" id="name" name="name"><br><!-- comment -->
            </div>

            <label for="practisebyReja">Email:</label><br>
            <input type="email" class="nph" id="email" name="email"><br>

            <label for="practisebyReja" id="Phone">Cell:</label><br>
            <input type="text" class="nph" id="cell" name="cell"><br>

            <label for="practisebyReja"><b>Gender:</b></label><br>
            <input type="radio" name="gender" value="male">Male <br>
            <input type="radio" name="gender" value="female">Female <br>

            <label for="practisebyReja">Subject:</label><br>
            <select name="subject" id="Subject">
                <option value="">--Select One--</option>
                <option value="jee" id="jee">jee</option>
                <option value="css" id="css">css</option>
                <option value="html" id="html">html</option>
                <option value="js" id="js">js</option>
                <option value="db" id="db">db</option>
            </select><br>


            <p class="mt-4">
                <button type="submit" class="btn btn-primary">Submit</button>
                <button type="reset" class="btn btn-warning">Reset</button>
            </p>


        </form>
    </div>
</fieldset>

<%@include file="footer.jsp" %>
