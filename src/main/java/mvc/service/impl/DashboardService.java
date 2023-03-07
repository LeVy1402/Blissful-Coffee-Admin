package mvc.service.impl;

import mvc.model.Dashboard;
import mvc.repository.IDashboardRepository;
import mvc.repository.impl.DashboardRepository;
import mvc.service.IDashboardService;

import java.sql.SQLException;

public class DashboardService implements IDashboardService {

    IDashboardRepository dashboardRepository = new DashboardRepository();
    @Override
    public Dashboard getDashboardInfo() throws SQLException {
        return dashboardRepository.getDashboardInfo();
    }
}
