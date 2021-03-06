package business;

import org.hibernate.annotations.Type;

import javax.persistence.*;
import java.text.NumberFormat;
import java.util.Base64;

@Entity
public class Accounts {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int user_id;
    private String username;
    private String password;
    private String firstname;
    private String lastname;
    private String fullname;
    private String role;
    private String email;
    private String base64Image;
    private String phone;
    private String address;
    @Type(type="org.hibernate.type.BinaryType")
    private byte[] profile_picture;

    public Accounts(String username, String password, String firstname,String lastname, String role, String email, byte[] profile_picture, String phone, String address) {
        this.username = username;
        this.password = password;
        this.firstname = firstname;
        this.lastname = lastname;
        this.role = role;
        this.email = email;
        this.profile_picture = profile_picture;
        this.fullname = firstname + " " + lastname;
        this.phone = phone;
        this.address = address;
    }

    public Accounts() {
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFirstName() { return firstname; }

    public void setFirstName(String firstName) { this.firstname = firstName; }

    public String getLastName() { return lastname; }

    public void setLastName(String lastName) { this.lastname = lastName;}
    public String getFullname() {
        return firstname + " " + lastname;
    }
    public void setFullname() {
        this.fullname =  this.firstname + " " + this.lastname;
    }


    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public byte[] getProfile_picture() {
        return profile_picture;
    }

    public void setProfile_picture(byte[] profile_picture) {
        this.profile_picture = profile_picture;
    }
    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
    @Transient
    public String getBase64Image() {
        base64Image = Base64.getEncoder().encodeToString(this.profile_picture);
        return base64Image;
    }

    public void setBase64Image(String base64Image) {
        this.base64Image = base64Image;
    }


}
