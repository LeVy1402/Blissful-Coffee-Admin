package mvc.controller;

import mvc.model.Staff;
import mvc.service.ILoginAdminService;
import mvc.service.impl.LoginAdminService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginServlet", value = {"/logins",""} )
public class LoginServlet extends HttpServlet {
    private ILoginAdminService iLoginAdminService = new LoginAdminService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("txtEmail");
        if (action == null) {
            action = "";
        }
        System.out.println(action);
        switch (action) {
            default:
                    listStaff(request, response);
                break;
        }
    }

    private void listStaff(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("login/login.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = String.valueOf(request.getParameter("action"));
        if (action == null) {
            action = "";
        }
        System.out.println(action);
        switch (action) {
            case "login":
                processRequest(request,response);
//                response.setContentType("text/html;charset=UFT-8");
//                try {
//                    String email = request.getParameter("txtEmail");
//                    String pass = request.getParameter("txtPass");
//                    Staff staff = iLoginAdminService.checkLogin(email, pass);
//                    if (staff == null) {
//                        response.sendRedirect("/logins");
//                    }else {
//                        response.sendRedirect("login/dashboard.jsp");
//                    }
//                } catch (Exception e){
//                    System.out.println(e);
//                }
                break;
        }
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        System.out.println("ALO ANH ");
//        response.setContentType("text/html;charset=UFT-8");
        try {
            String email = request.getParameter("txtEmail");
            String pass = request.getParameter("txtPass");
            Staff staff = iLoginAdminService.checkLogin(email, pass);
            if (staff == null) {
                response.sendRedirect("/logins");
            }else {
                response.sendRedirect("home/dashboard.jsp");
            }
        } catch (Exception e){
            System.out.println(e);
        }
    }
}
