<jsp:useBean class="model.Employee"  id="e" />
<%@page  import="dao.EmpDao" %>
<jsp:setProperty  name="e" property="*" />

<%
int result=EmpDao.addEmp(e);

    if(result>0){
    response.sendRedirect("success.jsp?msg=success");
    }
    else{
    response.sendRedirect("error.jsp?msg=failure");
    }

%>