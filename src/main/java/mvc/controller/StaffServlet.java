package mvc.controller;

import mvc.model.Role;
import mvc.model.SiteInf;
import mvc.model.Staff;
import mvc.service.IRoleService;
import mvc.service.ISiteInfService;
import mvc.service.IStaffService;
import mvc.service.impl.RoleService;
import mvc.service.impl.SiteInfService;
import mvc.service.impl.StaffService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "StaffServlet", value = "/staffs")
public class StaffServlet extends HttpServlet {
    private IStaffService staffService = new StaffService();
    private IRoleService iRoleService = new RoleService();
    private ISiteInfService iSiteInfService = new SiteInfService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        System.out.println(action);
        switch (action) {
            case "create":
                showNewFormStaff(request, response);
                break;
            case "delete":
                try {
                    showDeleteStaff(request, response);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
            default:
                try {
                    listStaff(request, response);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
        }
    }

    private void showNewFormStaff(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("staff/staff_create.jsp");
        dispatcher.forward(request, response);
    }


    private void showDeleteStaff(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        staffService.deleteStaff(id);
        List<Staff> staffList = staffService.selectAllStaff();
        request.setAttribute("staffList", staffList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("staff/staff_list.jsp");
        dispatcher.forward(request, response);
    }

    private void listStaff(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        List<Staff> staffList = staffService.selectAllStaff();
        request.setAttribute("staffList", staffList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("staff/staff_list.jsp");
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
            case "create":
                    createStaff(request, response);
                break;
            case "update":
                try {
                    updateStaff(request, response);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
//                case "search":
//                    searchCustomerById(request, response);
//                    break;
        }

    }

    private void createStaff(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fullName = request.getParameter("fullName");
        boolean gender = Boolean.parseBoolean(request.getParameter("gender"));
        String contact = request.getParameter("contact");
        String email = request.getParameter("email");
        System.out.println(email);
        String pass = request.getParameter("pass");
        int roleId = Integer.parseInt(request.getParameter("roleId"));
        System.out.println(roleId);
        Role role = new Role(roleId, null);
        int site = Integer.parseInt(request.getParameter("siteId"));
        SiteInf siteInf = new SiteInf(site, null, null, null, null, null);

        Staff staff = new Staff(fullName, gender, contact,  email,pass, role, siteInf);
        staffService.addStaff(staff);
//        RequestDispatcher dispatcher = request.getRequestDispatcher("staff/staff_list.jsp");
//        dispatcher.forward(request, response);
        response.sendRedirect(request.getContextPath()+"/staffs");
    }

    private void updateStaff(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String fullName = request.getParameter("fullName");
        String contact = request.getParameter("contact");
        String email = request.getParameter("email");
        int roleId = Integer.parseInt(request.getParameter("roleId"));
        System.out.println(roleId);
        Role role = new Role(roleId, null);
//        Role newRole = iRoleService.getRoleById(roleId);
//        int site = Integer.parseInt(request.getParameter("siteId"));
//        SiteInf siteInf = new SiteInf(site, null, null, null, null, null);
//        SiteInf newSiteInt = iSiteInfService.getSiteInfById(site);
        Staff staffUpdate = new Staff(id, fullName, contact, email, role);
        staffService.updateStaff(staffUpdate);
        request.setAttribute("staffList", staffService.selectAllStaff());
        RequestDispatcher dispatcher = request.getRequestDispatcher("staff/staff_list.jsp");
        dispatcher.forward(request, response);
    }

}
