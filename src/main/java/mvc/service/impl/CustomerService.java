package mvc.service.impl;

import mvc.model.Customer;
import mvc.repository.ICustomerRepository;
import mvc.repository.impl.CustomerRepository;
import mvc.service.ICustomerService;

import java.sql.SQLException;
import java.util.List;

public class CustomerService implements ICustomerService {
    private ICustomerRepository iCustomerRepository = new CustomerRepository();
    @Override
    public List<Customer> selectAllCustomer() throws SQLException {
        return iCustomerRepository.selectAllCustomer();
    }

    @Override
    public Customer getCustomerById(int id) {
        return null;
    }

    @Override
    public boolean updateCustomer(Customer customer) throws SQLException {
        return iCustomerRepository.updateCustomer(customer);
    }

    @Override
    public boolean deleteCustomer(int idCustomer) throws SQLException {
        return iCustomerRepository.deleteCustomer(idCustomer);
    }

    @Override
    public void addCustomer(Customer customer) {
        iCustomerRepository.addCustomer(customer);
    }


}
