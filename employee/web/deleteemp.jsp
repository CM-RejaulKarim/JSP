<jsp:useBean class="model.Employee"  id="e" />
<%@page  import="dao.EmpDao" %>
<jsp:setProperty  name="e" property="*" />

<%
    EmpDao.deleteEmp(e.getId());

    response.sendRedirect("success.jsp");
    
%>