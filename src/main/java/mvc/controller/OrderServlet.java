package mvc.controller;

import mvc.model.*;
import mvc.service.IOrderService;
import mvc.service.impl.OrderService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.sql.Date;
import java.util.List;

@WebServlet(name = "OrderServlet", value = "/orders")
public class OrderServlet extends HttpServlet {

    private IOrderService iOrderService = new OrderService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        System.out.println(action);
        switch (action) {
            case "approve":
                showApprove(request, response);
                break;
            case "delete":
                try {
                    showDeleteOrder(request, response);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
            default:
                try {
                    listOrder(request, response);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
        }
    }

    private void showApprove(HttpServletRequest request, HttpServletResponse response) {
    }

    private void showDeleteOrder(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        iOrderService.deleteOrder(id);
        List<Order> orderList = iOrderService.selectAllOrder();
        request.setAttribute("orderList", orderList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("order/order_list.jsp");
        dispatcher.forward(request, response);
    }

    private void listOrder(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        List<Order> orderList = iOrderService.selectAllOrder();
        request.setAttribute("orderList", orderList);
        double amount = iOrderService.selectAmount();
        request.setAttribute("amount", amount);
        RequestDispatcher dispatcher = request.getRequestDispatcher("order/order_list.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        System.out.println(action);
        switch (action) {
            case "update":
                try {
                    updateOrder(request, response);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
        }
    }

    private void updateOrder(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        int fullName = Integer.parseInt(request.getParameter("fullName"));

        Customer customer = new Customer(fullName, null, null, true
                , null, null, null, null, null, null);
        Date order = Date.valueOf(request.getParameter("dateOrder"));
        String status = request.getParameter("status");
        int processBy = Integer.parseInt(request.getParameter("roleId"));
        Staff role = new Staff(processBy, null, true, null, null, null, null, null, null);

        Order order1 = new Order(id, customer, order, status, role);
        iOrderService.updateOrder(order1);
        request.setAttribute("orderList", iOrderService.selectAllOrder());
        RequestDispatcher dispatcher = request.getRequestDispatcher("order/order_list.jsp");
        dispatcher.forward(request, response);
    }
}


