package mvc.controller;

import mvc.model.Dashboard;
import mvc.service.ICustomerService;
import mvc.service.IDashboardService;
import mvc.service.impl.DashboardService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "DashboardServlet", value = "/dashboard")
public class DashboardServlet extends HttpServlet {
    private IDashboardService dashboardService = new DashboardService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        try {
            dashboardInfo(request, response);

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    private void dashboardInfo(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        Dashboard dashboard = dashboardService.getDashboardInfo();
        dashboard.setRevenues( (int) dashboard.getRevenues());
        request.setAttribute("dashboard", dashboard);
        RequestDispatcher dispatcher = request.getRequestDispatcher("home/dashboard.jsp");
        dispatcher.forward(request, response);
    }
}
