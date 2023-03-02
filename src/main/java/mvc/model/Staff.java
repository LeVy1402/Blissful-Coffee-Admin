package mvc.model;

public class Staff {
    private int staffIdl;
    private String fullName;
    private String contact;
    private String email;
    private String userName;
    private String passWord;
    private Role roleId;
    private SiteInf siteInfId;

    public Staff(int staffIdl, String fullName, String contact, String email, String userName, String passWord, Role roleId, SiteInf siteInfId) {
        this.staffIdl = staffIdl;
        this.fullName = fullName;
        this.contact = contact;
        this.email = email;
        this.userName = userName;
        this.passWord = passWord;
        this.roleId = roleId;
        this.siteInfId = siteInfId;
    }

    public Staff(int staffIdl, String fullName, String email, String userName, String passWord, Role roleId, SiteInf siteInfId) {
        this.staffIdl = staffIdl;
        this.fullName = fullName;
        this.email = email;
        this.userName = userName;
        this.passWord = passWord;
        this.roleId = roleId;
        this.siteInfId = siteInfId;
    }

    public Staff(String email, String passWord) {
        this.email = email;
        this.passWord = passWord;
    }


    public int getStaffIdl() {
        return staffIdl;
    }

    public void setStaffIdl(int staffIdl) {
        this.staffIdl = staffIdl;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
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

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    public Role getRoleId() {
        return roleId;
    }

    public void setRoleId(Role roleId) {
        this.roleId = roleId;
    }

    public SiteInf getSiteInfId() {
        return siteInfId;
    }

    public void setSiteInfId(SiteInf siteInfId) {
        this.siteInfId = siteInfId;
    }

    @Override
    public String toString() {
        return "Staff{" +
                "staffIdl=" + staffIdl +
                ", fullName='" + fullName + '\'' +
                ", contact='" + contact + '\'' +
                ", email='" + email + '\'' +
                ", userName='" + userName + '\'' +
                ", passWord='" + passWord + '\'' +
                ", roleId=" + roleId +
                ", siteInfId=" + siteInfId +
                '}';
    }
}
