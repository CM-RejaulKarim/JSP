/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package servlet;

import dao.EmpDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import model.Employee;

/**
 *
 * @author Admin
 */
@WebServlet("/empServelet")
public class EmpServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String action = req.getParameter("action");

        if ("add".equals(action)) {
            Employee emp = new Employee();

            emp.setName(req.getParameter("name"));
            emp.setPost(req.getParameter("post"));
            emp.setSalary(Float.parseFloat(req.getParameter("salary")));

            System.out.println("Name " + emp.getName());

            EmpDao.addEmp(emp);

            resp.sendRedirect("allempserv.jsp");
            
            
        } else if ("edit".equals(action)) {
            Employee emp = new Employee();

            emp.setName(req.getParameter("name"));
            emp.setPost(req.getParameter("post"));
            emp.setSalary(Float.parseFloat(req.getParameter("salary")));
            emp.setId(Integer.parseInt(req.getParameter("id")));

            System.out.println("Name " + emp.getName());

            EmpDao.editEmp(emp);

            resp.sendRedirect("allempserv.jsp");
        }

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String action = req.getParameter("action");
        
        if ("delete".equals(action)) {
            EmpDao.deleteEmp(Integer.parseInt(req.getParameter("id")));
            resp.sendRedirect("allempserv.jsp");
            
        }
        else if ("edit".equals(action)) {
            EmpDao.deleteEmp(Integer.parseInt(req.getParameter("id")));
            
            Employee e =EmpDao.getEmpById(Integer.parseInt(req.getParameter("id")));
            req.setAttribute("emp", e);
            
            req.getRequestDispatcher("editempserv.jsp").forward(req, resp);
        }
    }

}
