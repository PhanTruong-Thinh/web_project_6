package vn.edu.hcmuaf.fit.model;

public class Account_User {
    private String email;
    private String passWord;


    public Account_User() {
    }

    public Account_User(String email, String passWord) {
        this.email = email;
        this.passWord = passWord;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    @Override
    public String toString() {
        return "Account_User{" +
                "email='" + email + '\'' +
                ", passWord='" + passWord + '\'' +
                '}';
    }
}
