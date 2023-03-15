package mvc.repository.impl;

import mvc.model.Role;
import mvc.model.SiteInf;
import mvc.model.Staff;
import mvc.repository.DBConnection;
import mvc.repository.IStaffRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class StaffRepository implements IStaffRepository {
    private static final String SELECT_ALL_STAFF = "SELECT `staff_id` ,`fullname`,`contact`,`email`,`password`,`profile_staff`,`role_id`,`site_inf_id`,`gender`,`role_mame`,`site_name`,`description`,`contact_info`,`address`,`last_update`\n" +
            "             from `staff` inner join `role` using(role_id) join `site_inf`\n" +
            "\t\t using(site_inf_id);\n";
    private static final String SELECT_STAFF_BY_ID = "SELECT `staff_id` ,`full_name`,`contact`,`email`,`role_id`,`site_inf_id` from `staff` where `staff_id` = ?";
    private static final String UPDATE_STAFF_SQL =  "update `staff` set `fullname` = ?,`contact`= ?,`email` =?,`role_id` =?  where `staff_id` = ?;";

    private static final String DELETE_STAFF_BY_ID = "delete from `staff` where `staff_id` = ?";
    private static final String INSERT_STAFF_SQL = "INSERT INTO `staff`" + "  (`staff_id`,`fullname`,`contact`,`gender`,`email`,`password`,`profile_staff`,`role_id`,`site_inf_id`) VALUES " +
            " (?, ?, ?, ?, ?, ?, ?, ?,?)";

    @Override
    public List<Staff> selectAllStaff() {
        List<Staff> staffList = new ArrayList<>();
        Connection connection = DBConnection.getConnection();
        ResultSet resultSet = null;
        PreparedStatement preparedStatement = null;
        if (connection != null) {
            try {
                preparedStatement = connection.prepareStatement(SELECT_ALL_STAFF);
                resultSet = preparedStatement.executeQuery();
                while (resultSet.next()) {
                    int staffId = resultSet.getInt("staff_id");
                    String fullName = resultSet.getString("fullname");
                    boolean gender = resultSet.getBoolean("gender");
                    String contact = resultSet.getString("contact");
                    String email = resultSet.getString("email");
                    String password = resultSet.getString("password");
                    String profileStaff = resultSet.getString("profile_staff");
                    Role roleId = new Role(resultSet.getInt("role_id"), resultSet.getString("role_mame"));
                    SiteInf siteInfId = new SiteInf(resultSet.getInt("site_inf_id"), resultSet.getString("site_name"),
                            resultSet.getString("description"), resultSet.getString("contact_info"),
                            resultSet.getString("address"), resultSet.getDate("last_update"));
                    Staff staff = new Staff(staffId, fullName, gender, contact, email, password, profileStaff, roleId, siteInfId);
                    staffList.add(staff);
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
        return staffList;
    }

    @Override
    public Staff getStaffById(int id) {
        Staff staff = null;
        Connection connection = DBConnection.getConnection();
        ResultSet resultSet = null;
        PreparedStatement preparedStatement = null;
//        if (connection != null) {
//            try {
//                preparedStatement = connection.prepareStatement(SELECT_STAFF_BY_ID);
//                preparedStatement.setInt(1, id);
//                resultSet = preparedStatement.executeQuery();
//                while (resultSet.next()) {
//                    int staffIdl = resultSet.getInt("staff_id");
//                    String fullName = resultSet.getString("full_name");
//                    String contact = resultSet.getString("contact");
//                    String email = resultSet.getString("email");
//                    String userName = resultSet.getString("user_name");
//                    String passWord = resultSet.getString("password");
//                    Role roleId = new Role(resultSet.getInt("role_id"), resultSet.getString("role_name"));
//                    SiteInf siteInfId = new SiteInf(resultSet.getInt("site_inf_id"), resultSet.getString("site_name"),
//                            resultSet.getString("description"), resultSet.getString("contact_info"),
//                            resultSet.getString("address"), resultSet.getDate("last_update"));
//                    staff = new Staff(staffIdl, fullName, contact, email, userName, passWord, roleId, siteInfId);
//                }
//            } catch (SQLException ex) {
//                throw new RuntimeException(ex);
//            } finally {
//                try {
//                    resultSet.close();
//                    preparedStatement.close();
//                } catch (SQLException e) {
//                    throw new RuntimeException(e);
//                }
//                DBConnection.close();
//            }
//        }
        return staff;
    }

    @Override
    public boolean updateStaff(Staff staff) throws SQLException {
        boolean rowUpdate = false;
        Connection connection = DBConnection.getConnection();
        PreparedStatement preparedStatement = null;
        if (connection != null) {
            try {
//                (int staffIdl, String fullName, String contact, String email, String userName, String passWord, int roleId, int siteInfId)
                preparedStatement = connection.prepareStatement(UPDATE_STAFF_SQL);
                preparedStatement.setString(1, staff.getFullName());
                preparedStatement.setString(2, staff.getContact());
                preparedStatement.setString(3, staff.getEmail());
                preparedStatement.setInt(4, staff.getRoleId().getRoleId());
                preparedStatement.setInt(5, staff.getStaffId());
                rowUpdate = preparedStatement.executeUpdate() > 0;
            } catch (SQLException ex) {
                throw new RuntimeException(ex);
            } finally {
                try {
                    preparedStatement.close();
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                DBConnection.close();
            }
        }
        return rowUpdate;

    }

    @Override
    public boolean deleteStaff(int idStaff) throws SQLException {
        boolean rowDelete = false;
        Connection connection = DBConnection.getConnection();
        PreparedStatement preparedStatement = null;
        if (connection != null) {
            try {
                preparedStatement = connection.prepareStatement(DELETE_STAFF_BY_ID);
                preparedStatement.setInt(1, idStaff);
                rowDelete = preparedStatement.executeUpdate() > 0;
            } catch (SQLException e) {
                throw new RuntimeException(e);
            } finally {
                try {
                    preparedStatement.close();
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                DBConnection.close();
            }
        }
        return rowDelete;
    }

    @Override
    public void addStaff(Staff staff) {
        Connection connection = DBConnection.getConnection();
        PreparedStatement preparedStatement = null;
        if (connection != null) {
            try {
//                staff_id`,`fullname`,`contact`,`gender`,`email`,`password`,`profile_staff`,`role_id`,`site_inf_id`
                preparedStatement = connection.prepareStatement(INSERT_STAFF_SQL);
                preparedStatement.setInt(1, staff.getStaffId());
                preparedStatement.setString(2, staff.getFullName());
                preparedStatement.setString(3, staff.getContact());
                preparedStatement.setBoolean(4, staff.isGender());
                preparedStatement.setString(5, staff.getEmail());
                preparedStatement.setString(6, staff.getPassword());
                preparedStatement.setString(7, staff.getProfileStaff());
                preparedStatement.setInt(8, staff.getRoleId().getRoleId());
                preparedStatement.setInt(9, staff.getSiteInfId().getSiteInfId());
                System.out.println(preparedStatement);
                preparedStatement.executeUpdate();

            } catch (SQLException e) {
                throw new RuntimeException(e);
            } finally {
                try {
                    preparedStatement.close();
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                DBConnection.close();
            }
        }
    }


}
