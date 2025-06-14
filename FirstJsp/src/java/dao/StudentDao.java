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
    
    public static List<Student> getAllStudents() {
      List<Student> list = new ArrayList<>();
      
      sql = "select * from student";
      
      try {
          ps =DbUtil.getCon().prepareStatement(sql);
          
          rs = ps.executeQuery();
          
          while(rs.next()){
              
              Student s=new Student(rs.getInt("id"),
                      sql,
                      sql,
                      sql);
          }
      } catch (SQLException ex) {
          Logger.getLogger(StudentDao.class.getName()).log(Level.SEVERE, null, ex);
      }
      return null;
      // emp id, name, post, salary;
        
    }
    
}
