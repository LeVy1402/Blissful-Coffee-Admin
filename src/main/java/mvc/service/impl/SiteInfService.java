package mvc.service.impl;
import mvc.model.SiteInf;
import mvc.repository.ISiteInfRepository;
import mvc.repository.impl.SiteInfRepository;
import mvc.service.ISiteInfService;
import java.util.List;

public class SiteInfService implements ISiteInfService {

    private ISiteInfRepository SiteInfRepository = new SiteInfRepository();
    @Override
    public SiteInf getSiteInfById(int id) {
        return SiteInfRepository.getSiteInfById(id);
    }

    @Override
    public List<SiteInf> getAllSiteInf() {
        return SiteInfRepository.getAllSiteInf();
    }
}
