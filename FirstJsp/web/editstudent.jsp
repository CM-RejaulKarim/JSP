<jsp:useBean class="model.Student"  id="s" />
<%@page  import="dao.StudentDao" %>
<jsp:setProperty  name="s" property="*" />

<%
int result=StudentDao.updateStudent(s);

if(result>0){
    response.sendRedirect("success.jsp");
    }
    else{
    response.sendRedirect("error.jsp");
    }

%>