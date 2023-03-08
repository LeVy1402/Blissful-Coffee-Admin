package mvc.controller;

import mvc.model.Customer;
import mvc.service.ICustomerService;
import mvc.service.impl.CustomerService;

import javax.imageio.ImageIO;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@WebServlet(name = "CustomerServlet", value = "/customers")
@MultipartConfig
public class CustomerServlet extends HttpServlet {
    private ICustomerService customerService = new CustomerService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        System.out.println(action);
        switch (action) {
            case "create":
                showNewFormCustomer(request, response);
                break;
            case "delete":
                try {
                    showDeleteCustomer(request, response);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
            default:
                try {
                    listCustomer(request, response);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
        }
    }

    private void showNewFormCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("customer/customer_create.jsp");
        dispatcher.forward(request, response);
    }


    private void showDeleteCustomer(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        customerService.deleteCustomer(id);

        File file = new File("/img_customer/avatar_customer"+id+".jpg");
        file.delete();
        if (file.exists()) {
            throw new IOException("Deletion failed");
        }

        List<Customer> customerList = customerService.selectAllCustomer();
        request.setAttribute("customerList", customerList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("customer/customer_list.jsp");
        dispatcher.forward(request, response);
    }

    private void listCustomer(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        List<Customer> customerList = customerService.selectAllCustomer();
        request.setAttribute("customerList", customerList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("customer/customer_list.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        System.out.println(action);
        switch (action) {
            case "create":
                try {
                    createCustomer(request, response);
                } catch (SQLException | ParseException e) {
                    throw new RuntimeException(e);
                }
                break;
            case "update":
                try {
                    updateCustomer(request, response);
                } catch (SQLException | ParseException e) {
                    throw new RuntimeException(e);
                }
                break;
//                case "search":
//                    searchCustomerById(request, response);
//                    break;
        }

    }


    private void updateCustomer(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException, ParseException {
        response.getWriter().print("The file uploaded sucessfully.");
        int customerId = Integer.parseInt(request.getParameter("id"));
        String fullName = request.getParameter("fullName");
        Date dateOfBirth = new SimpleDateFormat("yyyy-mm-dd").parse(request.getParameter("dateOfBirth"));
        String contact = request.getParameter("contact");
        String email = request.getParameter("email");
        String profileCustomer = request.getParameter("profileCustomer");
        String address= request.getParameter("address");
        Boolean gender = Boolean.parseBoolean(request.getParameter("gender"));

        Part filePart = request.getPart("profileCustomer");
//        String fileName = filePart.getSubmittedFileName();
        String fileName = "avatar_customer"+customerId+".jpg";
        String path = request.getServletContext().getRealPath("/img_customer");
        System.out.println(path);
        filePart.write(path +"/" + fileName);

        Customer customerUpdate = new Customer(customerId, fullName, dateOfBirth, gender, contact, email, fileName, address);
        customerService.updateCustomer(customerUpdate);


//        File file = new File(request.getParameter("profileCustomer") );
//        BufferedImage image = new BufferedImage();
//        try {
//            ImageIO.write(image, ext, file);  // ignore returned boolean
//        } catch(IOException e) {
//            System.out.println("Write error for " + file.getPath() +
//                    ": " + e.getMessage());
//        }


        request.setAttribute("customerList", customerService.selectAllCustomer());
        RequestDispatcher dispatcher = request.getRequestDispatcher("customer/customer_list.jsp");
        dispatcher.forward(request, response);
    }

    private void createCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ParseException, SQLException {
        String fullName = request.getParameter("fullName");
        Date dateOfBirth = new SimpleDateFormat("yyyy-mm-dd").parse(request.getParameter("dateOfBirth"));
        String contact = request.getParameter("contact");
        String email = request.getParameter("email");
        String profileCustomer = request.getParameter("profileCustomer");
        String address= request.getParameter("address");
        Boolean gender = Boolean.parseBoolean(request.getParameter("gender"));
        String password = request.getParameter("password");

        Customer newCustomer = new Customer(fullName, dateOfBirth, gender, contact, email, password, profileCustomer, address);
        customerService.addCustomer(newCustomer);
        request.setAttribute("customerList", customerService.selectAllCustomer());
        RequestDispatcher dispatcher = request.getRequestDispatcher("customer/customer_list.jsp");
        dispatcher.forward(request, response);
    }

}