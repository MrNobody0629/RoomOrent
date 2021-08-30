
package databaseoperation;
import java.sql.*;
public class ConnectionProvider 
{
    static Connection con=null;
    public static Connection getConnection() throws SQLException, ClassNotFoundException
    {
        try
        {
            if(con==null)
            {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/roomorent","root","Hacker22");
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return con;
    }
    
}