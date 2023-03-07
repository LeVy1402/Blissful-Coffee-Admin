package mvc.repository.impl;

import mvc.model.Customer;
import mvc.repository.DBConnection;
import mvc.repository.ICustomerRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class CustomerRepository implements ICustomerRepository {

    private static final String SELECT_ALL_CUSTOMER = "SELECT `customer_id` ,`fullname`,`dob`,`gender`,`email`,`phone_number`,`profile_img`,`password`,`account_status`,`address` from `customer`";

    private static final String SELECT_CUSTOMER_BY_ID = "SELECT `customer_id` ,`fullname`,`dob`,`gender`,`email`,`phone_number`,`profile_img`,`password`,`account_status`,`address` from `customer` where `customer_id` = ?";
    private static final String UPDATE_CUSTOMER_SQL =  "update `customer` set `fullname` = ?, `dob`=?, `gender`=?, `email` =?,`phone_number` =?,`profile_img` =?,`address` =?  where `customer_id` = ?;";

    private static final String DELETE_CUSTOMER_BY_ID = "delete from `customer` where `customer_id` = ?";
    private static final String INSERT_CUSTOMER_SQL = "INSERT INTO `customer`" + "  (`staff_id`,`full_name`,`contact`,`email`,`user_name`,`password`,`role_id`,`site_inf_id`) VALUES " +
            " (?, ?, ?,?,?, ?, ?,?)";

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

    }
}
