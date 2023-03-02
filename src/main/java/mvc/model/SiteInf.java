package mvc.model;

import java.util.Date;

public class SiteInf {
    private int siteInfId;
    private String siteName;
    private String description;
    private String contactInfo;
    private String address;
    private Date last_update;

    public SiteInf(int siteInfId, String siteName, String description, String contactInfo, String address, Date last_update) {
        this.siteInfId = siteInfId;
        this.siteName = siteName;
        this.description = description;
        this.contactInfo = contactInfo;
        this.address = address;
        this.last_update = last_update;
    }

    public int getSiteInfId() {
        return siteInfId;
    }

    public void setSiteInfId(int siteInfId) {
        this.siteInfId = siteInfId;
    }

    public String getSiteName() {
        return siteName;
    }

    public void setSiteName(String siteName) {
        this.siteName = siteName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getContactInfo() {
        return contactInfo;
    }

    public void setContactInfo(String contactInfo) {
        this.contactInfo = contactInfo;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Date getLast_update() {
        return last_update;
    }

    public void setLast_update(Date last_update) {
        this.last_update = last_update;
    }
}
