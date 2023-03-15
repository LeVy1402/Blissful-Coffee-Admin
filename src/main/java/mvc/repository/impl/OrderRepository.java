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
    private static final String SELECT_ALL_ORDER = "select * from `order` join `staff` on `order`.`process_by` = `staff`.`staff_id`  join `customer` using(`customer_id`);";
    private static final String SELECT_ALL_AMOUNT = "select sum(`price`*`order_detail`.`quantity`) as `sum_amount` from `order`\n" +
            "inner join `order_detail` on `order`.`order_id` = `order_detail`.`order_id`\n" +
            "inner join `product` on `product`.`product_id` = `order_detail`.`product_id`\n" +
            "where `order_detail`.`order_id` = 1;\n";
    private static final String DELETE_ORDER_BY_ID = "delete from `order` where `order_id` = ?";
    private static final String UPDATE_ORDER_SQL ="update `order` set `customer_id` = ?,`order_date`= ?,`order_status` =?,`process_by` =?  where `order_id` = ?;";

    @Override
    public List<Order> selectAllOrder() throws SQLException {
        List<Order> orderList = new ArrayList<>();
        Connection connection = DBConnection.getConnection();
        ResultSet resultSet = null;
        PreparedStatement preparedStatement = null;
        if (connection != null) {
            try {
                preparedStatement = connection.prepareStatement(SELECT_ALL_ORDER);
                resultSet = preparedStatement.executeQuery();
                while (resultSet.next()) {
                    int orderId = resultSet.getInt("order_id");
                    Customer cusId = new Customer(resultSet.getInt("customer_id"), resultSet.getString("fullname"), resultSet.getDate("dob"),
                            resultSet.getBoolean("gender"), resultSet.getString("phone_number"), resultSet.getString("email"),
                            resultSet.getString("password"), resultSet.getString("profile_img"), resultSet.getString("account_status"), resultSet.getString("address"));
                    Date orderDate = resultSet.getDate("dob");
                    String orderStatus = resultSet.getString("order_status");
                    Role role = new Role(resultSet.getInt("role_id"),null);
                    SiteInf siteInf = new SiteInf(resultSet.getInt("site_inf_id"),null,null,null,null,null);
//                    SiteInf siteInf = new SiteInf(resultSet.getInt("site_inf_id"), resultSet.getString("site_name"), resultSet.getString("description"),
//                            resultSet.getString("contact_info"), resultSet.getString("address"), resultSet.getDate("last_update"));
                    Staff processBy = new Staff(resultSet.getInt("staff_id"), resultSet.getString("fullname"), resultSet.getBoolean("gender"),
                            resultSet.getString("contact"), resultSet.getString("email"), resultSet.getString("password"),
                            resultSet.getString("profile_staff"), role, siteInf);
                    Order order = new Order(orderId, cusId, orderDate, orderStatus, processBy);
                    orderList.add(order);
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
        return orderList;
    }

    @Override
    public double selectAmount() throws SQLException {
        Connection connection = DBConnection.getConnection();
        ResultSet resultSet = null;
        PreparedStatement preparedStatement = null;
        double sumAmount = 0;
        if (connection != null) {
            try {
                preparedStatement = connection.prepareStatement(SELECT_ALL_AMOUNT);
                resultSet = preparedStatement.executeQuery();
                while (resultSet.next()) {
                    sumAmount = resultSet.getDouble("sum_amount");

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

        return sumAmount;
    }

    @Override
    public boolean deleteOrder(int idOrder) throws SQLException {
        boolean rowDelete = false;
        Connection connection = DBConnection.getConnection();
        PreparedStatement preparedStatement = null;
        if (connection != null) {
            try {
                preparedStatement = connection.prepareStatement(DELETE_ORDER_BY_ID);
                preparedStatement.setInt(1, idOrder);
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
    public boolean updateOrder(Order order) throws SQLException {
        boolean rowUpdate = false;
        Connection connection = DBConnection.getConnection();
        PreparedStatement preparedStatement = null;
        if (connection != null) {
            try {
//                (int staffIdl, String fullName, String contact, String email, String userName, String passWord, int roleId, int siteInfId)
//                private static final String UPDATE_ORDER_SQL ="update `order` set `customer_id` = ?,`order_date`= ?,`order_status` =?,`process_by` =?  where `order_id` = ?;";

                preparedStatement = connection.prepareStatement(UPDATE_ORDER_SQL);
                preparedStatement.setInt(1, order.getCustomerId().getCustomerId());
                preparedStatement.setDate(2, (java.sql.Date) order.getOrderDate());
                preparedStatement.setString(3, order.getOrderStatus());
                preparedStatement.setInt(4, order.getProcessBy().getStaffId());
                preparedStatement.setInt(5, order.getOrderId());
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

}
