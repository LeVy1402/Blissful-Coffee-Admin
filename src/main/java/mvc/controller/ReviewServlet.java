package mvc.controller;

import mvc.model.Rating;
import mvc.service.IDashboardService;
import mvc.service.IReviewService;
import mvc.service.impl.ReviewService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "ReviewServlet", value = "/reviews")
public class ReviewServlet extends HttpServlet {

    private IReviewService reviewService = new ReviewService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        System.out.println(action);
        switch (action) {
            case "create":
              break;
            default:
                try {
                    listReviews(request, response);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
        }
    }

    private void listReviews(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        List<Rating> reviewList = reviewService.selectAllRating();
        request.setAttribute("reviewList", reviewList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("home/review.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}
