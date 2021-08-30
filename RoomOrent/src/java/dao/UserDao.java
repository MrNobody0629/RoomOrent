
package dao;
import dataset.User;
import java.sql.*;
public class UserDao 
{

    Connection con=null;
    public UserDao(Connection con) 
    {
        this.con=con;
    }
    
    public boolean saveUser(String name,String email,String number,String gender,String password)
    {
        boolean status=false;
        try
            {
                String q="insert into users(name,email,mobile,gender,password) values(?,?,?,?,?)";
                PreparedStatement pstmt=con.prepareStatement(q);
                pstmt.setString(1,name);
                pstmt.setString(2,email);
                pstmt.setString(3,number);
                pstmt.setString(4,gender);
                pstmt.setString(5,password);
                pstmt.executeUpdate();
                status=true;
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
        return status; 
    }
    
    public User getUserByEmailAndPassword(String email,String password)
    {
        User usr=null;
        try
            {
                String q="select * from users where email=? and password=?";
                PreparedStatement pstmt=con.prepareStatement(q);
                pstmt.setString(1,email);
                pstmt.setString(2,password);
                ResultSet rs=pstmt.executeQuery();
                if(rs.next())
                {
                    usr=new User();
                    usr.setUid(rs.getInt("id"));
                    usr.setName(rs.getString("name"));
                    usr.setEmail(rs.getString("email"));
                    usr.setMobile(rs.getString("mobile"));
                    usr.setGender(rs.getString("gender"));
                    usr.setPassword(rs.getString("password"));
                    usr.setProfilepic(rs.getString("profilepic"));
                }
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
        return usr;  
    }
    
    public User getUserByUserId(int u_id)
    {
        User us=null;
        try
            {
                String q="select * from users where id=?";
                PreparedStatement pstmt=con.prepareStatement(q);
                pstmt.setInt(1,u_id);
                ResultSet rs=pstmt.executeQuery();
                if(rs.next())
                {
                    us=new User(rs.getString("name"),rs.getString("email"),rs.getString("mobile"));
                }
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
        return us;  
    }

    public boolean updatepic(int id,String path) 
    {
        boolean status=false;
        try
            {
                String q="update users set profilepic=? where id=?";
                PreparedStatement pstmt=con.prepareStatement(q);
                pstmt.setString(1,path);
                pstmt.setInt(2,id);
                pstmt.executeUpdate();
                status=true;
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
        return status;
    }
}
