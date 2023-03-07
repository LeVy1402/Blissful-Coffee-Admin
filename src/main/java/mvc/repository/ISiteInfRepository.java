package mvc.repository;

import mvc.model.SiteInf;

import java.util.List;

public interface ISiteInfRepository {
    SiteInf getSiteInfById(int id);
    List<SiteInf> getAllSiteInf();
}
