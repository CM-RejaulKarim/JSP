/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Student;
import util.DbUtil;

public class StudentDao {

    static PreparedStatement ps;
    static ResultSet rs;
    static String sql;

    public static List<Student> getAllStudent() {
        List<Student> students = new ArrayList<>();

        sql = "select * from student";

        try {
            ps = DbUtil.getCon().prepareStatement(sql);

            rs = ps.executeQuery();

            while (rs.next()) {

                Student s = new Student(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("email"),
                        rs.getString("cell"),
                        rs.getString("subject"),
                        rs.getString("gender")
                );
                students.add(s);
            }

            ps.close();
            rs.close();
            DbUtil.getCon().close();

        } catch (SQLException ex) {
            Logger.getLogger(StudentDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return students;

    }

    public static int saveStudent(Student s) {
        int status = 0;

        sql = "insert into student(name, email, cell, subject, gender) values(?,?,?,?,?)";

        try {
            ps = DbUtil.getCon().prepareStatement(sql);

            ps.setString(1, s.getName());
            ps.setString(2, s.getEmail());
            ps.setString(3, s.getCell());
            ps.setString(4, s.getSubject());
            ps.setString(5, s.getGender());

            status = ps.executeUpdate();

            ps.close();
            DbUtil.getCon().close();

        } catch (SQLException ex) {
            Logger.getLogger(StudentDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return status;
    }

    public static void deleteStudent(int id) {

        sql = "delete from student where id=?";

        try {
            ps = DbUtil.getCon().prepareStatement(sql);

            ps.setInt(1, id);

            ps.executeUpdate();

            ps.close();
            DbUtil.getCon().close();

        } catch (SQLException ex) {
            Logger.getLogger(StudentDao.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
    public static Student getById(int id) {
        Student s =null;
        
        sql ="select * from student where id=?";
        
        try {
            ps=DbUtil.getCon().prepareStatement(sql);
            
            ps.setInt(1, id);
            
            rs= ps.executeQuery();
            
            while(rs.next()){
            
                s=new Student(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("email"),
                        rs.getString("cell"),
                        rs.getString("subject"),
                        rs.getString("gender")
                );
            }
            ps.close();
            rs.close();
            DbUtil.getCon().close();
            
        } catch (SQLException ex) {
            Logger.getLogger(StudentDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return s;
    }
    
    public static int updateStudent(Student s) {
        int status = 0;

        sql = "update student set name=?, email=?, cell=?, subject=?, gender=? where id =?";

        try {
            ps = DbUtil.getCon().prepareStatement(sql);

            ps.setString(1, s.getName());
            ps.setString(2, s.getEmail());
            ps.setString(3, s.getCell());
            ps.setString(4, s.getSubject());
            ps.setString(5, s.getGender());
            ps.setInt(6, s.getId());

            status = ps.executeUpdate();

            ps.close();
            DbUtil.getCon().close();

        } catch (SQLException ex) {
            Logger.getLogger(StudentDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return status;
    }
    

}
