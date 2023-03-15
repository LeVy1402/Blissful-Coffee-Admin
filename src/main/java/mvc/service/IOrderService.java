package mvc.service;

import mvc.model.Order;
import mvc.model.Staff;

import java.sql.SQLException;
import java.util.List;

public interface IOrderService {
    List<Order> selectAllOrder() throws SQLException;
    double selectAmount() throws SQLException;
    public boolean deleteOrder(int idOrder) throws SQLException;
    public boolean updateOrder(Order order) throws SQLException;
}
