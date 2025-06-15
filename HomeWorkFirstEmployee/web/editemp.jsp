<jsp:useBean class="model.Employee"  id="e" />
<%@page  import="dao.EmpDao" %>
<jsp:setProperty  name="e" property="*" />

<%
int result=EmpDao.editEmp(e);

    if(result>0){
    response.sendRedirect("indexhw.jsp");
    }
    else{
    response.sendRedirect("indexhw.jsp");
    }

%>