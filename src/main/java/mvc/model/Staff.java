package mvc.model;

public class Staff {
    private int staffId;
    private String fullName;
    private boolean gender;
    private String contact;
    private String email;
    private String password;
    private String profileStaff;
    private Role roleId;
    private SiteInf siteInfId;

    public Staff(int staffId, String fullName, boolean gender, String contact, String email, String password, String profileStaff, Role roleId, SiteInf siteInfId) {
        this.staffId = staffId;
        this.fullName = fullName;
        this.gender = gender;
        this.contact = contact;
        this.email = email;
        this.password = password;
        this.profileStaff = profileStaff;
        this.roleId = roleId;
        this.siteInfId = siteInfId;
    }


    public Staff(int staffId, String fullName, String contact, String email, Role roleId) {
        this.staffId = staffId;
        this.fullName = fullName;
        this.contact = contact;
        this.email = email;
        this.roleId = roleId;
    }

    public int getStaffId() {
        return staffId;
    }

    public void setStaffId(int staffId) {
        this.staffId = staffId;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public boolean isGender() {
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

    public String getProfileStaff() {
        return profileStaff;
    }

    public void setProfileStaff(String profileStaff) {
        this.profileStaff = profileStaff;
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
}
