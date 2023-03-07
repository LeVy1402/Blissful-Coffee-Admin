package mvc.repository.impl;

import mvc.model.Dashboard;
import mvc.repository.DBConnection;
import mvc.repository.IDashboardRepository;

import java.sql.*;

public class DashboardRepository implements IDashboardRepository {

    private static final String SELECT_TOTAL_PRODUCT = "SELECT count(*) AS total_product FROM product";
    private static final String SELECT_TOTAL_PAYMENT= "select sum(price*order_detail.quantity) AS total_payment from `payment` " +
            "inner join `order` on payment.order_id = `order`.order_id " +
            "inner join order_detail on `order`.order_id = order_detail.order_id " +
            "inner join product on product.product_id = order_detail.product_id ";
    private static final String SELECT_TOTAL_ORDER = "SELECT count(*) AS total_order FROM `order`";
    private static final String SELECT_TOTAL_CUSTOMER = "SELECT count(*) AS total_customer FROM customer";
    private static final String SELECT_ORDER_STATISTIC = "CALL order_statistic(?)";
    @Override
    public Dashboard getDashboardInfo() throws SQLException {
        Dashboard dashboard = new Dashboard(
                getTotalProduct(),
                getTotalPayment(),
                getTotalOrder(),
                getTotalCustomer(),
                getDateOrder(),
                getWeekOrder(),
                getMonthOrder()
        );
        System.out.println(dashboard);
        return dashboard;
    }

    public int getTotalProduct(){
        Connection connection = DBConnection.getConnection();
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        int totalProduct = 0;
        if (connection != null) {
            try {
                preparedStatement = connection.prepareStatement(SELECT_TOTAL_PRODUCT);
                resultSet = preparedStatement.executeQuery();
                while (resultSet.next()){
                    totalProduct = resultSet.getInt("total_product");
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }finally {
                try {
                    resultSet.close();
                    preparedStatement.close();
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                DBConnection.close();
            }
        }
        return totalProduct;
    }

    public double getTotalPayment(){
        Connection connection = DBConnection.getConnection();
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        double totalPayment = 0;
        if (connection != null) {
            try {
                preparedStatement = connection.prepareStatement(SELECT_TOTAL_PAYMENT);
                resultSet = preparedStatement.executeQuery();
                System.out.println(resultSet);
                while (resultSet.next()){
                    totalPayment = resultSet.getDouble("total_payment");

                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }finally {
                try {
                    resultSet.close();
                    preparedStatement.close();
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                DBConnection.close();
            }
        }
        return totalPayment;
    }

    public int getTotalOrder(){
        Connection connection = DBConnection.getConnection();
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        int totalOrder = 0;
        if (connection != null) {
            try {
                preparedStatement = connection.prepareStatement(SELECT_TOTAL_ORDER);
                resultSet = preparedStatement.executeQuery();
                while (resultSet.next()) {
                    totalOrder = resultSet.getInt("total_order");
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }finally {
                try {
                    resultSet.close();
                    preparedStatement.close();
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                DBConnection.close();
            }
        }
        return totalOrder;
    }

    public int getTotalCustomer(){
        Connection connection = DBConnection.getConnection();
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        int totalCustomer = 0;
        if (connection != null) {
            try {
                preparedStatement = connection.prepareStatement(SELECT_TOTAL_CUSTOMER);
                resultSet = preparedStatement.executeQuery();
                while (resultSet.next()) {
                    totalCustomer = resultSet.getInt("total_customer");
                }

            } catch (SQLException e) {
                throw new RuntimeException(e);
            }finally {
                try {
                    resultSet.close();
                    preparedStatement.close();
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                DBConnection.close();
            }
        }
        return totalCustomer;
    }

    public int[] getMonthOrder (){
        Connection connection = DBConnection.getConnection();
        CallableStatement callableStatement = null;
        ResultSet resultSet = null;
        int[] monthOrder = new int[3];
        if (connection != null) {
            try {
                callableStatement = connection.prepareCall(SELECT_ORDER_STATISTIC);
                callableStatement.setString(1, "month");
                resultSet = callableStatement.executeQuery();
                while (resultSet.next()) {
                    monthOrder[0] = resultSet.getInt("delivered");
                    monthOrder[1] = resultSet.getInt("on_delivery");
                    monthOrder[2] = resultSet.getInt("new_order");
                }

            } catch (SQLException e) {
                throw new RuntimeException(e);
            } finally {
                try {
                    resultSet.close();
                    callableStatement.close();
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                DBConnection.close();
            }
        }
        return monthOrder;
    }

    public int[] getWeekOrder (){
        Connection connection = DBConnection.getConnection();
        CallableStatement callableStatement = null;
        ResultSet resultSet = null;
        int[] weekOrder = new int[3];
        if (connection != null) {
            try {
                callableStatement = connection.prepareCall(SELECT_ORDER_STATISTIC);
                callableStatement.setString(1, "week");
                resultSet = callableStatement.executeQuery();
                while (resultSet.next()) {
                    weekOrder[0] = resultSet.getInt("delivered");
                    weekOrder[1] = resultSet.getInt("on_delivery");
                    weekOrder[2] = resultSet.getInt("new_order");
                }

            } catch (SQLException e) {
                throw new RuntimeException(e);
            } finally {
                try {
                    resultSet.close();
                    callableStatement.close();
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                DBConnection.close();
            }
        }
        return weekOrder;
    }

    public int[] getDateOrder (){
        Connection connection = DBConnection.getConnection();
        CallableStatement callableStatement = null;
        ResultSet resultSet = null;
        int[] dateOrder = new int[3];
        if (connection != null) {
            try {
                callableStatement = connection.prepareCall(SELECT_ORDER_STATISTIC);
                callableStatement.setString(1, "date");
                resultSet = callableStatement.executeQuery();
                while (resultSet.next()) {
                    dateOrder[0] = resultSet.getInt("delivered");
                    dateOrder[1] = resultSet.getInt("on_delivery");
                    dateOrder[2] = resultSet.getInt("new_order");
                }

            } catch (SQLException e) {
                throw new RuntimeException(e);
            } finally {
                try {
                    resultSet.close();
                    callableStatement.close();
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                DBConnection.close();
            }
        }
        return dateOrder;
    }
}
