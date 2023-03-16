package mvc.service;

import mvc.model.Customer;
import mvc.model.Product;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public interface ICustomerService {
    List<Customer> selectAllCustomer() throws SQLException;
//    Map<String,Double> selectAllTotalSpent() throws SQLException;
    Customer getCustomerById(int id);
    public boolean updateCustomer(Customer customer) throws SQLException;
    public boolean deleteCustomer(int idCustomer) throws SQLException;
    void addCustomer(Customer customer);
    List<Customer> searchCusNameLocation(String search);}