package mvc.service.impl;

import mvc.model.Order;
import mvc.model.Staff;
import mvc.repository.IOrderRepository;
import mvc.repository.impl.OrderRepository;
import mvc.service.IOrderService;

import java.sql.SQLException;
import java.util.List;

public class OrderService implements IOrderService {
    private IOrderRepository iOrderRepository = new OrderRepository();

    @Override
    public List<Order> selectAllOrder() throws SQLException {
        return iOrderRepository.selectAllOrder();
    }
}
