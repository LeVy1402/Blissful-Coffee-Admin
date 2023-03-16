package mvc.repository.impl;

import mvc.model.Customer;
import mvc.repository.DBConnection;
import mvc.repository.ICustomerRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;


public class CustomerRepository implements ICustomerRepository {

    private static final String SELECT_ALL_CUSTOMER = "SELECT `customer_id` ,`fullname`,`dob`,`gender`,`email`,`phone_number`,`profile_img`,`password`,`account_status`,`address` from `customer`";

    private static final String SELECT_CUSTOMER_BY_ID = "SELECT `customer_id` ,`fullname`,`dob`,`gender`,`email`,`phone_number`,`profile_img`,`password`,`account_status`,`address` from `customer` where `customer_id` = ?";
    private static final String UPDATE_CUSTOMER_SQL =  "update `customer` set `fullname` = ?, `dob`=?, `gender`=?, `email` =?,`phone_number` =?,`profile_img` =?,`address` =?  where `customer_id` = ?;";

    private static final String DELETE_CUSTOMER_BY_ID = "delete from `customer` where `customer_id` = ?";
//    private static final String INSERT_CUSTOMER_SQL = "INSERT INTO `customer`" + "  (`fullname`,`dob`,`gender`,`email`,`phone_number`,`profile_img`,`password`,`account_status`,`address`) VALUES " +
//            " (?, ?, ?,?,?, ?,?,'online',?)";

    private static final String INSERT_CUSTOMER_SQL = "INSERT INTO coffee_blissful.customer (`fullname`,`dob`,`gender`,`email`,`phone_number`,`profile_img`,`password`,`account_status`,`address`) VALUES" +
            "(?, ?, ?,?,?, ?,?,'online',?)";
    private static final String SEARCH_TWO_CUS ="select * from `customer` where `fullname` like ? or `address` like ?";
//    private static final String SELECT_ALL_TOTAL_SPENT_BY_ID = "select fullname, sum(price*order_detail.quantity) AS total_payment from  `order` \n" +
//            "inner join order_detail on `order`.order_id = order_detail.order_id \n" +
//            "inner join customer on customer.customer_id = `order`.order_id\n" +
//            "inner join product on product.product_id = order_detail.product_id \n" +
//            "where customer.customer_id = ?;";


    @Override
    public List<Customer> selectAllCustomer() throws SQLException {
        List<Customer> customerList = new ArrayList<>();
        Connection connection = DBConnection.getConnection();
        ResultSet resultSet = null;
        PreparedStatement preparedStatement = null;
        if (connection != null) {
            try {
                preparedStatement = connection.prepareStatement(SELECT_ALL_CUSTOMER);
                resultSet = preparedStatement.executeQuery();
                while (resultSet.next()) {
                    int customerId = resultSet.getInt("customer_id");
                    String fullName = resultSet.getString("fullname");
                    Date dateOfBirth = resultSet.getDate("dob");
                    boolean gender = resultSet.getBoolean("gender");
                    String contact = resultSet.getString("phone_number");
                    String email = resultSet.getString("email");
                    String password = resultSet.getString("password");
                    String profileCustomer = resultSet.getString("profile_img");
                    String accountStatus = resultSet.getString("account_status");
                    String address = resultSet.getString("address");
                    Customer customer = new Customer(customerId, fullName, dateOfBirth, gender ,contact, email, password, profileCustomer, accountStatus, address);
                    customerList.add(customer);
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
        return customerList;
    }

//    @Override
//    public Map<String, Double> selectAllTotalSpent() throws SQLException {
//                Map<String,Double>customerLists = new HashMap<>();
//
//        Connection connection = DBConnection.getConnection();
//        ResultSet resultSet = null;
//        PreparedStatement preparedStatement = null;
//        if (connection != null) {
//            try {
//                preparedStatement = connection.prepareStatement(SELECT_ALL_TOTAL_SPENT_BY_ID);
//                resultSet = preparedStatement.executeQuery();
//                while (resultSet.next()) {
//                    customerLists.put(resultSet.getString("fullname"),resultSet.getDouble("total_payment"));
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
//        return  customerLists;
//    }


    @Override
    public Customer getCustomerById(int id) {
        return null;
    }

    @Override
    public boolean updateCustomer(Customer customer) throws SQLException {
        boolean rowUpdate = false;
        Connection connection = DBConnection.getConnection();
        PreparedStatement preparedStatement = null;
        if (connection != null) {
            try {
//                (int staffIdl, String fullName, String contact, String email, String userName, String passWord, int roleId, int siteInfId)
                preparedStatement = connection.prepareStatement(UPDATE_CUSTOMER_SQL);
                preparedStatement.setString(1, customer.getFullName());
                preparedStatement.setDate(2, new java.sql.Date(customer.getDateOfBirth().getTime()));
                preparedStatement.setBoolean(3, customer.getGender());
                preparedStatement.setString(4, customer.getEmail());
                preparedStatement.setString(5, customer.getContact());
                preparedStatement.setString(6, customer.getProfileCustomer());
                preparedStatement.setString(7, customer.getAddress());
                preparedStatement.setInt(8, customer.getCustomerId());
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
    public boolean deleteCustomer(int idCustomer) throws SQLException {
        boolean rowDelete = false;
        Connection connection = DBConnection.getConnection();
        PreparedStatement preparedStatement = null;
        if (connection != null) {
            try {
                preparedStatement = connection.prepareStatement(DELETE_CUSTOMER_BY_ID);
                preparedStatement.setInt(1, idCustomer);
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
    public void addCustomer(Customer customer) {
        Connection connection = DBConnection.getConnection();
        PreparedStatement preparedStatement = null;
        if (connection != null) {
            try {
                preparedStatement = connection.prepareStatement(INSERT_CUSTOMER_SQL);
                preparedStatement.setString(1, customer.getFullName());
                preparedStatement.setDate(2, new java.sql.Date(customer.getDateOfBirth().getTime()));
                preparedStatement.setBoolean(3, customer.getGender());
                preparedStatement.setString(4, customer.getEmail());
                preparedStatement.setString(5, customer.getContact());
                preparedStatement.setString(6, customer.getProfileCustomer());
                preparedStatement.setString(7, customer.getPassword());
                preparedStatement.setString(8, customer.getAddress());
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

    @Override
    public List<Customer> searchCusNameLocation(String search) {
        List<Customer> customerList = new ArrayList<>();
        Connection connection = DBConnection.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SEARCH_TWO_CUS);

            preparedStatement.setString(1, "%" + search + "%");
            preparedStatement.setString(2,  "%" + search + "%");
//            preparedStatement.setString(2, search);

            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int customerId = rs.getInt("customer_id");
                String fullName = rs.getString("fullname");
                Date dateOfBirth = rs.getDate("dob");
                boolean gender = rs.getBoolean("gender");
                String contact = rs.getString("phone_number");
                String email = rs.getString("email");
                String password = rs.getString("password");
                String profileCustomer = rs.getString("profile_img");
                String accountStatus = rs.getString("account_status");
                String address = rs.getString("address");
                Customer customer = new Customer(customerId, fullName, dateOfBirth, gender ,contact, email, password, profileCustomer, accountStatus, address);
                customerList.add(customer);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return customerList;
    }
}
