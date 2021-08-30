
package dao;
import dataset.Rooms;
import java.sql.*;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
public class RoomDao 
{
    static Connection con=null;

    public RoomDao(Connection con) {
        this.con=con;
    }    
    
    public boolean saveRoom(String addressline1,String addressline2,String state,String district,String pincode,String dimensionw,String dimensionh,String bathroom,String fan,String bed,String rentdemand,String image1,String image2,String image3,int ownerid)
    {
        boolean status=false;
        try
        {
            String query="insert into rooms (addressline1,addressline2,state,district,pincode,dimensionw,dimensionh,bathroom,fan,bed,rentdemand,image1,image2,image3,owner_id) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement pstmt=con.prepareStatement(query);
            pstmt.setString(1,addressline1);
            pstmt.setString(2,addressline2);
            pstmt.setString(3,state);
            pstmt.setString(4,district);
            pstmt.setString(5,pincode);
            pstmt.setString(6,dimensionw);
            pstmt.setString(7,dimensionh);
            pstmt.setString(8,bathroom);
            pstmt.setString(9,fan);
            pstmt.setString(10,bed);
            pstmt.setString(11,rentdemand);
            pstmt.setString(12,image1);
            pstmt.setString(13,image2);
            pstmt.setString(14,image3);
            pstmt.setInt(15,ownerid);
            pstmt.executeUpdate();
            status=true; 
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return status;
    }
    
    public Rooms getRoomByUID(int oid)
    {
        Rooms room=null;
        try
        {
            String query="SELECT * FROM rooms where owner_id=?";
            PreparedStatement pstmt=con.prepareStatement(query);
            pstmt.setInt(1,oid);
            ResultSet rs=pstmt.executeQuery();
            while(rs.next())
            {
    
                 int rid=rs.getInt("id");  
                 String addressline1=rs.getString("addressline1");
                 String addressline2=rs.getString("addressline2");
                 String state=rs.getString("state");
                 String district=rs.getString("district");
                 String pincode=rs.getString("pincode");
                 String dimensionw=rs.getString("dimensionw");
                 String dimensionh=rs.getString("dimensionh");
                 String bathroom=rs.getString("bathroom");
                 String fan=rs.getString("fan");
                 String bed=rs.getString("bed");
                 String rentdemand=rs.getString("rentdemand");
                 String image1=rs.getString("image1");
                 String image2=rs.getString("image2");
                 String image3=rs.getString("image3");  
                 int ownerid=rs.getInt("owner_id"); 
                 String datetime=rs.getDate("posttime").toString();
                 room=new Rooms(rid,addressline1,addressline2,state,district,pincode,dimensionw,dimensionh,bathroom,fan,bed,rentdemand,image1,image2,image3,ownerid,datetime);
                 
            } 
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return room;
        
    }
    
    public ArrayList<Rooms> getRooms()
    {
        ArrayList<Rooms> list=new ArrayList<>();
        try
        {
            String query="SELECT * FROM rooms";
            PreparedStatement pstmt=con.prepareStatement(query);
            ResultSet rs=pstmt.executeQuery();
            while(rs.next())
            {
    
                 int id=rs.getInt("id");  
                 String addressline1=rs.getString("addressline1");
                 String addressline2=rs.getString("addressline2");
                 String state=rs.getString("state");
                 String district=rs.getString("district");
                 String pincode=rs.getString("pincode");
                 String dimensionw=rs.getString("dimensionw");
                 String dimensionh=rs.getString("dimensionh");
                 String bathroom=rs.getString("bathroom");
                 String fan=rs.getString("fan");
                 String bed=rs.getString("bed");
                 String rentdemand=rs.getString("rentdemand");
                 String image1=rs.getString("image1");
                 String image2=rs.getString("image2");
                 String image3=rs.getString("image3");  
                 int ownerid=rs.getInt("owner_id"); 
                 String datetime=rs.getDate("posttime").toString();
                 Rooms room=new Rooms(id,addressline1,addressline2,state,district,pincode,dimensionw,dimensionh,bathroom,fan,bed,rentdemand,image1,image2,image3,ownerid,datetime);
                 list.add(room);
                 
            } 
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return list;
    }
    
    public ArrayList<Rooms> getRoomByDRF(String city,String min_rent,String max_rent,String pcode)
    {
        ArrayList<Rooms> list=new ArrayList<>();
        try
        {
            String query="SELECT * FROM rooms where district like '"+city+"%"+"' and pincode like '"+pcode+"%"+"' and rentdemand BETWEEN "+min_rent+" AND "+max_rent+" LIMIT 5";
            PreparedStatement pstmt=con.prepareStatement(query);
//            pstmt.setString(1,pcode);
            ResultSet rs=pstmt.executeQuery();
            while(rs.next())
            {
    
                 int id=rs.getInt("id");  
                 String addressline1=rs.getString("addressline1");
                 String addressline2=rs.getString("addressline2");
                 String state=rs.getString("state");
                 String district=rs.getString("district");
                 String pincode=rs.getString("pincode");
                 String dimensionw=rs.getString("dimensionw");
                 String dimensionh=rs.getString("dimensionh");
                 String bathroom=rs.getString("bathroom");
                 String fan=rs.getString("fan");
                 String bed=rs.getString("bed");
                 String rentdemand=rs.getString("rentdemand");
                 String image1=rs.getString("image1");
                 String image2=rs.getString("image2");
                 String image3=rs.getString("image3");  
                 int ownerid=rs.getInt("owner_id"); 
                 String datetime=rs.getDate("posttime").toString();
                 Rooms room=new Rooms(id,addressline1,addressline2,state,district,pincode,dimensionw,dimensionh,bathroom,fan,bed,rentdemand,image1,image2,image3,ownerid,datetime);
                 list.add(room);
            } 
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return list;
    }
    
    public ArrayList<Rooms> getRoomByPincode(String pcode)
    {
        ArrayList<Rooms> list=new ArrayList<>();
        try
        {
            String query="SELECT * FROM rooms where pincode like '"+pcode+"%"+"'";
            PreparedStatement pstmt=con.prepareStatement(query);
//            pstmt.setString(1,pcode);
            ResultSet rs=pstmt.executeQuery();
            while(rs.next())
            {
    
                 int id=rs.getInt("id");  
                 String addressline1=rs.getString("addressline1");
                 String addressline2=rs.getString("addressline2");
                 String state=rs.getString("state");
                 String district=rs.getString("district");
                 String pincode=rs.getString("pincode");
                 String dimensionw=rs.getString("dimensionw");
                 String dimensionh=rs.getString("dimensionh");
                 String bathroom=rs.getString("bathroom");
                 String fan=rs.getString("fan");
                 String bed=rs.getString("bed");
                 String rentdemand=rs.getString("rentdemand");
                 String image1=rs.getString("image1");
                 String image2=rs.getString("image2");
                 String image3=rs.getString("image3");  
                 int ownerid=rs.getInt("owner_id"); 
                 String datetime=rs.getDate("posttime").toString();
                 Rooms room=new Rooms(id,addressline1,addressline2,state,district,pincode,dimensionw,dimensionh,bathroom,fan,bed,rentdemand,image1,image2,image3,ownerid,datetime);
                 list.add(room);
                 
            } 
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return list;
    }
    
    public ArrayList<Rooms> getRoomByDistrict(String pcode)
    {
        ArrayList<Rooms> list=new ArrayList<>();
        try
        {
            String query="SELECT * FROM rooms where pincode like '"+pcode+"%"+"'";
            PreparedStatement pstmt=con.prepareStatement(query);
//            pstmt.setString(1,pcode);
            ResultSet rs=pstmt.executeQuery();
            while(rs.next())
            {
    
                 int id=rs.getInt("id");  
                 String addressline1=rs.getString("addressline1");
                 String addressline2=rs.getString("addressline2");
                 String state=rs.getString("state");
                 String district=rs.getString("district");
                 String pincode=rs.getString("pincode");
                 String dimensionw=rs.getString("dimensionw");
                 String dimensionh=rs.getString("dimensionh");
                 String bathroom=rs.getString("bathroom");
                 String fan=rs.getString("fan");
                 String bed=rs.getString("bed");
                 String rentdemand=rs.getString("rentdemand");
                 String image1=rs.getString("image1");
                 String image2=rs.getString("image2");
                 String image3=rs.getString("image3");  
                 int ownerid=rs.getInt("owner_id"); 
                 String datetime=rs.getDate("posttime").toString();
                 Rooms room=new Rooms(id,addressline1,addressline2,state,district,pincode,dimensionw,dimensionh,bathroom,fan,bed,rentdemand,image1,image2,image3,ownerid,datetime);
                 list.add(room);
                 
            } 
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return list;
    }
    
    public Rooms getRoomByRoomId(int r_id)
    {
        Rooms ro=null;
        try
        {
            String query="SELECT * FROM rooms where id=?";
            PreparedStatement pstmt=con.prepareStatement(query);
            pstmt.setInt(1,r_id);
            ResultSet rs=pstmt.executeQuery();
            while(rs.next())
            {
    
                 int id=rs.getInt("id");  
                 String addressline1=rs.getString("addressline1");
                 String addressline2=rs.getString("addressline2");
                 String state=rs.getString("state");
                 String district=rs.getString("district");
                 String pincode=rs.getString("pincode");
                 String dimensionw=rs.getString("dimensionw");
                 String dimensionh=rs.getString("dimensionh");
                 String bathroom=rs.getString("bathroom");
                 String fan=rs.getString("fan");
                 String bed=rs.getString("bed");
                 String rentdemand=rs.getString("rentdemand");
                 String image1=rs.getString("image1");
                 String image2=rs.getString("image2");
                 String image3=rs.getString("image3");  
                 int ownerid=rs.getInt("owner_id"); 
                 String datetime=rs.getDate("posttime").toString();
                 ro=new Rooms(id,addressline1,addressline2,state,district,pincode,dimensionw,dimensionh,bathroom,fan,bed,rentdemand,image1,image2,image3,ownerid,datetime);
            } 
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return ro;
    }

    public boolean updatepictures(String pic1, String pic2, String pic3,int id) 
    {
        boolean status=false;
        try
        {
            String q="update rooms set image1=?,image2=?,image3=? where id=?";
                PreparedStatement pstmt=con.prepareStatement(q);
                pstmt.setString(1,pic1);
                pstmt.setString(2,pic2);
                pstmt.setString(3,pic3);
                pstmt.setInt(4,id);
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
