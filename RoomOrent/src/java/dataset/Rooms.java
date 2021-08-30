
package dataset;
public class Rooms 
{
    private int id;  
    private String addressline1;
    private String addressline2;
    private String state;
    private String district;
    private String pincode;
    private String dimensionw;
    private String dimensionh;
    private String bathroom;
    private String fan;
    private String bed;
    private String rentdemand;
    private String image1;
    private String image2;
    private String image3;  
    private int ownerid;
    private String postdate;

    public Rooms() {
    }

    public Rooms(int id, String addressline1, String addressline2, String state, String district, String pincode, String dimensionw, String dimensionh, String bathroom, String fan, String bed, String rentdemand, String image1, String image2, String image3,int ownerid,String postdate) {
        this.id = id;
        this.addressline1 = addressline1;
        this.addressline2 = addressline2;
        this.state = state;
        this.district = district;
        this.pincode = pincode;
        this.dimensionw = dimensionw;
        this.dimensionh = dimensionh;
        this.bathroom = bathroom;
        this.fan = fan;
        this.bed = bed;
        this.rentdemand = rentdemand;
        this.image1 = image1;
        this.image2 = image2;
        this.image3 = image3;
        this.ownerid = ownerid;
        this.postdate = postdate;
    }

    public Rooms(String addressline1, String addressline2, String state, String district, String pincode, String dimensionw, String dimensionh, String bathroom, String fan, String bed, String rentdemand, String image1, String image2, String image3,int ownerid,String postdate) {
        this.addressline1 = addressline1;
        this.addressline2 = addressline2;
        this.state = state;
        this.district = district;
        this.pincode = pincode;
        this.dimensionw = dimensionw;
        this.dimensionh = dimensionh;
        this.bathroom = bathroom;
        this.fan = fan;
        this.bed = bed;
        this.rentdemand = rentdemand;
        this.image1 = image1;
        this.image2 = image2;
        this.image3 = image3;
        this.ownerid = ownerid;
        this.postdate = postdate;
    }

    public int getOwnerid() {
        return ownerid;
    }

    public void setOwnerid(int ownerid) {
        this.ownerid = ownerid;
    }

    public String getPostdate() {
        return postdate;
    }

    public void setPostdate(String postdate) {
        this.postdate = postdate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAddressline1() {
        return addressline1;
    }

    public void setAddressline1(String addressline1) {
        this.addressline1 = addressline1;
    }

    public String getAddressline2() {
        return addressline2;
    }

    public void setAddressline2(String addressline2) {
        this.addressline2 = addressline2;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getPincode() {
        return pincode;
    }

    public void setPincode(String pincode) {
        this.pincode = pincode;
    }

    public String getDimensionw() {
        return dimensionw;
    }

    public void setDimensionw(String dimensionw) {
        this.dimensionw = dimensionw;
    }

    public String getDimensionh() {
        return dimensionh;
    }

    public void setDimensionh(String dimensionh) {
        this.dimensionh = dimensionh;
    }

    public String getBathroom() {
        return bathroom;
    }

    public void setBathroom(String bathroom) {
        this.bathroom = bathroom;
    }

    public String getFan() {
        return fan;
    }

    public void setFan(String fan) {
        this.fan = fan;
    }

    public String getBed() {
        return bed;
    }

    public void setBed(String bed) {
        this.bed = bed;
    }

    public String getRentdemand() {
        return rentdemand;
    }

    public void setRentdemand(String rentdemand) {
        this.rentdemand = rentdemand;
    }

    public String getImage1() {
        return image1;
    }

    public void setImage1(String image1) {
        this.image1 = image1;
    }

    public String getImage2() {
        return image2;
    }

    public void setImage2(String image2) {
        this.image2 = image2;
    }

    public String getImage3() {
        return image3;
    }

    public void setImage3(String image3) {
        this.image3 = image3;
    }    
}
