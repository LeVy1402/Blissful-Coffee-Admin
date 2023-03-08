package mvc.repository.impl;

import mvc.model.*;
import mvc.repository.DBConnection;
import mvc.repository.IOrderRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class OrderRepository implements IOrderRepository {
    private static final String SELECT_ALL_ORDER = "SELECT `staff_id` ,`fullname`,`contact`,`email`,`password`,`profile_staff`,`role_id`,`site_inf_id`,`gender`,`role_mame`,`site_name`,`description`,`contact_info`,`address`,`last_update`\n" +
            "             from `staff` inner join `role` using(role_id) join `site_inf`\n" +
            "\t\t using(site_inf_id);\n";
    @Override
    public List<Order> selectAllOrder() throws SQLException {
        List<Order> orderList = new ArrayList<>();
        Connection connection = DBConnection.getConnection();
        ResultSet resultSet = null;
        PreparedStatement preparedStatement = null;
//        if (connection != null) {
//            try {
//                preparedStatement = connection.prepareStatement(SELECT_ALL_ORDER);
//                resultSet = preparedStatement.executeQuery();
//                while (resultSet.next()) {
//                    int orderId = resultSet.getInt("order_id");
//                    Customer customer = new Customer(resultSet.getInt("customer_id"), resultSet.getString("fullname"), resultSet.getDate("dob"), resultSet.getBoolean("gender"), resultSet.getString("email"), resultSet.getString("phone_number"), resultSet.getString("profile_img"), resultSet.getString("password"), resultSet.getString("account_status"), resultSet.getString("address"));
//                    Date orderDate = resultSet.getDate("order_date");
//                    String orderStatus = resultSet.getString("order_status");
//                    Staff staff = new Staff(resultSet.getInt("staff_id"), resultSet.getString("fullname"), resultSet.getBoolean("gender"), resultSet.getString("contact"), resultSet.getString("email"), resultSet.getString("password"), resultSet.getString("profile_staff"), new Role(resultSet.get("role_id")), resultSet.getInt("site_inf_id"));
//                    String profileStaff = resultSet.getString("profile_staff");
//                            resultSet.getString("description"), resultSet.getString("contact_info"),
//                            resultSet.getString("address"), resultSet
//                            SiteInf siteInfId = new SiteInf(resultSet.getInt("site_inf_id"), resultSet.getString("site_name"),.getDate("last_update"));
//                    Staff staff = new Staff(staffId, fullName, gender, contact, email, password, profileStaff, roleId, siteInfId);
//                    staffList.add(staff);
//                }
//            } catch (SQLException e) {
//                throw new RuntimeException(e);
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
        return orderList;
    }
}
