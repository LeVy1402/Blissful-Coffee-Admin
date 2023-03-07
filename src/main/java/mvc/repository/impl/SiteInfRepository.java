package mvc.repository.impl;

import mvc.model.SiteInf;
import mvc.repository.DBConnection;
import mvc.repository.ISiteInfRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class SiteInfRepository implements ISiteInfRepository {

    private static final String SELECT_ALL_SITE_INF = "SELECT `site_inf_id`,`site_name`,`description`,`contact_info`,`address`,`last_update` from`site_inf`";
    private static final String SELECT_SITE_INF_BY_ID = "SELECT `site_inf_id` ,`site_name` ,`description`,`contact_info`,`address`,`last_update`from `role` where `site_inf_id` = ?";

    @Override
    public SiteInf getSiteInfById(int id) {
        SiteInf siteInf = null;
        Connection connection = DBConnection.getConnection();
        ResultSet resultSet = null;
        PreparedStatement preparedStatement = null;
        if (connection != null) {
            try {
                preparedStatement = connection.prepareStatement(SELECT_SITE_INF_BY_ID);
                preparedStatement.setInt(1, id);
                resultSet = preparedStatement.executeQuery();
                while (resultSet.next()) {
                    int siteInfId = resultSet.getInt("site_inf_id");
                    String siteName = resultSet.getString("site_name");
                    String description = resultSet.getString("description");
                    String contactInfo = resultSet.getString("contact_info");
                    String address = resultSet.getString("address");
                    Date lastUpdate = resultSet.getDate("last_update");
                    siteInf = new SiteInf(siteInfId, siteName, description, contactInfo, address, lastUpdate);
                }
            } catch (SQLException ex) {
                throw new RuntimeException(ex);
            } finally {
                try {
                    resultSet.close();
                    preparedStatement.close();
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                DBConnection.close();
            }
        }
        return siteInf;
    }

    @Override
    public List<SiteInf> getAllSiteInf() {
        List<SiteInf> siteInfList = new ArrayList<>();
        Connection connection = DBConnection.getConnection();
        ResultSet resultSet = null;
        PreparedStatement preparedStatement = null;
        if (connection != null) {
            try {
                preparedStatement = connection.prepareStatement(SELECT_ALL_SITE_INF);
                resultSet = preparedStatement.executeQuery();
                while (resultSet.next()) {
                    int siteInfId = resultSet.getInt("site_inf_id");
                    String siteName = resultSet.getString("site_name");
                    String description = resultSet.getString("description");
                    String contactInfo = resultSet.getString("contact_info");
                    String address = resultSet.getString("address");
                    Date lastUpdate = resultSet.getDate("last_update");
                    SiteInf siteInf = new SiteInf(siteInfId, siteName, description, contactInfo, address, lastUpdate);
                    siteInfList.add(siteInf);
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            } finally {
                try {
                    resultSet.close();
                    preparedStatement.close();
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                DBConnection.close();
            }
        }
        return siteInfList;
    }
}
