package mvc.model;

import java.util.Date;

public class Customer {
    private int customerId;
    private String fullName;
    private Date dateOfBirth;
    private boolean gender;
    private String contact;
    private String email;
    private String password;
    private String profileCustomer;
    private String accountStatus;
    private String address;

    public Customer(int customerId, String fullName, Date dateOfBirth, boolean gender, String contact, String email, String password, String profileCustomer, String accountStatus, String address) {
        this.customerId = customerId;
        this.fullName = fullName;
        this.dateOfBirth = dateOfBirth;
        this.gender = gender;
        this.contact = contact;
        this.email = email;
        this.password = password;
        this.profileCustomer = profileCustomer;
        this.accountStatus = accountStatus;
        this.address = address;
    }

    public Customer(int customerId, String fullName, Date dateOfBirth, Boolean gender, String contact, String email, String profileCustomer, String address) {
        this.customerId = customerId;
        this.fullName = fullName;
        this.dateOfBirth = dateOfBirth;
        this.gender = gender;
        this.contact = contact;
        this.email = email;
        this.profileCustomer = profileCustomer;
        this.address = address;
    }

    public String getAccountStatus() {
        return accountStatus;
    }

    public void setAccountStatus(String accountStatus) {
        this.accountStatus = accountStatus;
    }
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public Date getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public boolean getGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getProfileCustomer() {
        return profileCustomer;
    }

    public void setProfileCustomer(String profileCustomer) {
        this.profileCustomer = profileCustomer;
    }
}