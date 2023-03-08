package mvc.service;

import mvc.model.Dashboard;

import java.sql.SQLException;

public interface IDashboardService {
    Dashboard getDashboardInfo() throws SQLException;
}
