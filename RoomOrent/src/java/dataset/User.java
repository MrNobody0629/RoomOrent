
package dataset;

public class User 
{
    private int uid;
    private String name;
    private String email;
    private String mobile;
    private String gender;
    private String password;
    private String profilepic;

    public User() {
    }

    
    public User(int uid, String name, String email, String mobile, String gender, String password,String profilepic) {
        this.uid = uid;
        this.name = name;
        this.email = email;
        this.mobile = mobile;
        this.gender = gender;
        this.password = password;
        this.profilepic = profilepic;
    }

    public User(String name, String email, String mobile, String gender, String password, String profilepic) {
        this.name = name;
        this.email = email;
        this.mobile = mobile;
        this.gender = gender;
        this.password = password;
        this.profilepic = profilepic;
    }
    
    

    public User(String name, String email, String mobile) {
        this.name=name;
        this.email=email;
        this.mobile=mobile;
        
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getProfilepic() {
        return profilepic;
    }

    public void setProfilepic(String profilepic) {
        this.profilepic = profilepic;
    }
    
}
