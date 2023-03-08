package mvc.repository;

import mvc.model.Dashboard;

import java.sql.SQLException;

public interface IDashboardRepository {
    Dashboard getDashboardInfo() throws SQLException;
}
