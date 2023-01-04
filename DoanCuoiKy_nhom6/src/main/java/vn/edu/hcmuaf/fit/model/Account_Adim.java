package vn.edu.hcmuaf.fit.model;

public class Account_Adim {
    private String email;
    private String passWord;
    public Account_Adim() {
    }
    public Account_Adim(String email, String passWord) {
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
        return "Account_Adim{" +
                "email='" + email + '\'' +
                ", passWord='" + passWord + '\'' +
                '}';
    }
}
