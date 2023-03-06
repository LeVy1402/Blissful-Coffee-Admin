package mvc.service;

import mvc.model.Customer;

import java.sql.SQLException;
import java.util.List;

public interface ICustomerService {
    List<Customer> selectAllCustomer() throws SQLException;
    Customer getCustomerById(int id);
    public boolean updateCustomer(Customer customer) throws SQLException;
    public boolean deleteCustomer(int idCustomer) throws SQLException;
    void addCustomer(Customer customer);
}