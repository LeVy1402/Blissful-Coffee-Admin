package mvc.service;

import mvc.model.SiteInf;

import java.util.List;

public interface ISiteInfService {
    SiteInf getSiteInfById(int id);
    List<SiteInf> getAllSiteInf();
}
