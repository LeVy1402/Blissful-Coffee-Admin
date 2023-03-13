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
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        System.out.println(action);
        switch (action) {
            case "forgot_password":
                forgot(request,response);
                break;
            default:
                    listStaff(request, response);
                break;
        }
    }

    private void listStaff(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("login/login.jsp");
        dispatcher.forward(request, response);
    }

    private void forgot(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("login/forgot_pass.jsp");
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
            case "forgot_password":
                Forgot(request,response);
                break;
            default:
                processRequest(request,response);
                break;
        }
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();
        System.out.println("ALO ANH ");
//        response.setContentType("text/html;charset=UFT-8");
        try {
            String email = request.getParameter("txtEmail");
            String pass = request.getParameter("txtPass");
            Staff staff = iLoginAdminService.checkLogin(email, pass);
            if (staff == null) {
                response.sendRedirect("/logins?err=1");
            }else {
                session.setAttribute("UserLogin",staff);
                response.sendRedirect("home/dashboard.jsp");
            }
        } catch (Exception e){
            System.out.println(e);
        }
    }

    protected void Forgot(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String txtEmail = request.getParameter("txtEmail");
        String txtPass = request.getParameter("txtPass");
        if(iLoginAdminService.ForgotPass(txtEmail,txtPass) > 0){
            //thành công
            response.sendRedirect("/logins?msg=1");
            return;
        }else {
            //thất bại
            response.sendRedirect("/logins?action=forgot_password&&err=1");
            return;
        }
    }

}
