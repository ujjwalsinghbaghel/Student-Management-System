package dao;

import entity.User;
import util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserRepository {
    private DBUtil dbUtil=new DBUtil();


    public  void addUser(User user){
        String query="insert into users(name,username,password) values(?,?,?)";
        Connection connection=dbUtil.getConnection();

        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1,user.getName());
            ps.setString(2,user.getUsername());
            ps.setString(3,user.getPassword());
            ps.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }


    }

    public User findByUserName(String username){
        String query="select * from users where username = ?";
        Connection connection=dbUtil.getConnection();
        try {
            PreparedStatement ps=connection.prepareStatement(query);
            ps.setString(1,username);
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                User user=new User();
                user.setId(rs.getInt("id"));
                user.setName(rs.getString("name"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                return user;
            }
            return null;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}


