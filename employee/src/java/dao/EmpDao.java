package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Employee;
import util.DbUtil;

public class EmpDao {

    static PreparedStatement ps;
    static ResultSet rs;
    static String sql;

    public static List<Employee> getAllEmp() {

        List<Employee> employees = new ArrayList<>();

        sql = "select * from emp";

        try {
            ps = DbUtil.getCon().prepareStatement(sql);

            rs = ps.executeQuery();

            while (rs.next()) {

                Employee e = new Employee(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("post"),
                        rs.getFloat("salary")
                );
                employees.add(e);
            }
            ps.close();
            rs.close();
            DbUtil.getCon().close();

        } catch (SQLException ex) {
            Logger.getLogger(EmpDao.class.getName()).log(Level.SEVERE, null, ex);
        }

        return employees;
    }

    public static int addEmp(Employee e) {
        int status = 0;

        sql = "insert into emp(name, post, salary) values(?,?,?)";

        try {
            ps = DbUtil.getCon().prepareStatement(sql);

            ps.setString(1, e.getName());
            ps.setString(2, e.getPost());
            ps.setFloat(3, e.getSalary());

            status = ps.executeUpdate();

            System.out.println(status);

            ps.close();
            DbUtil.getCon().close();

        } catch (SQLException ex) {
            Logger.getLogger(EmpDao.class.getName()).log(Level.SEVERE, null, ex);
        }

        return status;
    }

    public static void deleteEmp(int id) {
        sql = "delete from emp where id=?";

        try {
            ps = DbUtil.getCon().prepareStatement(sql);

            ps.setInt(1, id);

            ps.executeUpdate();

            ps.close();
            DbUtil.getCon().close();

        } catch (SQLException ex) {
            Logger.getLogger(EmpDao.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public static Employee getEmpById(int id) {
        Employee e = null;

        sql = "select * from emp where id =?";

        try {
            ps = DbUtil.getCon().prepareStatement(sql);

            ps.setInt(1, id);

            rs = ps.executeQuery();
            
            while(rs.next()){
            e = new Employee(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("post"),
                        rs.getFloat("salary")
                );
            
            }

            rs.close();
            ps.close();
            DbUtil.getCon().close();

        } catch (SQLException ex) {
            Logger.getLogger(EmpDao.class.getName()).log(Level.SEVERE, null, ex);
        }

        return e;
    }
    
    public static int editEmp(Employee e) {
        int status = 0;

        sql = "update emp set name=?, post=?, salary=? where id =?";

        try {
            ps = DbUtil.getCon().prepareStatement(sql);

            ps.setString(1, e.getName());
            ps.setString(2, e.getPost());
            ps.setFloat(3, e.getSalary());
            ps.setInt(4, e.getId());

            status = ps.executeUpdate();

            ps.close();
            DbUtil.getCon().close();

        } catch (SQLException ex) {
            Logger.getLogger(EmpDao.class.getName()).log(Level.SEVERE, null, ex);
        }

        return status;
    }

}
