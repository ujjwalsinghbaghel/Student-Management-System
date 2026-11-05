package dao;

import entity.Student;
import util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class StudentRepository {

    private DBUtil dbUtil=new DBUtil();

    public void addStudent(Student s){
        String query="insert into student(name,age,address) values(?,?,?)";
        Connection connection=dbUtil.getConnection();
        try {
            PreparedStatement ps=connection.prepareStatement(query);
            ps.setString(1,s.getName());
            ps.setInt(2,s.getAge());
            ps.setString(3,s.getAddress());
            ps.executeUpdate();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void updateStudent(Student s){
        String query="update student set name=? , age=?,address=? where id=?";
        Connection connection= dbUtil.getConnection();
        try {
            PreparedStatement ps=connection.prepareStatement(query);
            ps.setString(1,s.getName());
            ps.setInt(2,s.getAge());
            ps.setString(3,s.getAddress());
            ps.setInt(4,s.getId());
            ps.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void deleteStudent(int id){
        String query="delete from student where id=?";
        Connection connection= dbUtil.getConnection();
        try {
            PreparedStatement ps=connection.prepareStatement(query);
            ps.setInt(1,id);
            ps.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public Student getStudentById(int id){
        Connection connection= dbUtil.getConnection();
        String query="select * from student where id=?";
        try {
            PreparedStatement ps= connection.prepareStatement(query);
            ps.setInt(1,id);
            ResultSet rs=ps.executeQuery();
            while (rs.next()){
                Student student=new Student();
                student.setId(rs.getInt("id"));
                student.setName(rs.getString("name"));
                student.setAge(rs.getInt("age"));
                student.setAddress(rs.getString("address"));
                return student;
            }
            return null;
        } catch (SQLException e) {

            throw new RuntimeException(e);
        }
    }

    public List<Student> getAllStudents(){
        List<Student> list=new ArrayList<>();
        String query="select * from student";
        Connection connection=dbUtil.getConnection();
        try {
            PreparedStatement ps=connection.prepareStatement(query);
            ResultSet rs=ps.executeQuery();
            while (rs.next()){
                Student student=new Student();
                student.setId(rs.getInt("id"));
                student.setName(rs.getString("name"));
                student.setAge(rs.getInt("age"));
                student.setAddress(rs.getString("address"));
                list.add(student);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return list;
    }



}
