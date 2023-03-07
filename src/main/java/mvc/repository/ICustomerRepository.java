package mvc.repository;

import mvc.model.Customer;
import mvc.repository.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public interface ICustomerRepository {
    List<Customer> selectAllCustomer() throws SQLException;
    Customer getCustomerById(int id);
    public boolean updateCustomer(Customer customer) throws SQLException;
    public boolean deleteCustomer(int idCustomer) throws SQLException;
    void addCustomer(Customer customer);

}
