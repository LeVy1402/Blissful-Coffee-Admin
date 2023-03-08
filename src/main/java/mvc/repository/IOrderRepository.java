package mvc.repository;

import mvc.model.Order;
import mvc.model.Staff;

import java.sql.SQLException;
import java.util.List;

public interface IOrderRepository {
    List<Order> selectAllOrder() throws SQLException;
}
