package mvc.controller;

import mvc.model.Product;
import mvc.service.IProductService;
import mvc.service.impl.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ProductServlet", value = "/products")
public class ProductServlet extends HttpServlet {
    private IProductService iProductService = new ProductService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
//                showNewFormCustomer(request, response);
                break;
            case "del":
                int id = Integer.parseInt(request.getParameter("id"));
                iProductService.del(id);
                List<Product> productList = iProductService.getProduct();
                List<Product> listDetailProduct = new ArrayList<>();
                Product detailProduct = null;
                for (Product layId: productList) {
                    detailProduct = iProductService.detailProduct(layId.getProductId());
                    listDetailProduct.add(detailProduct);
                }
                request.setAttribute("listDetailProduct", listDetailProduct);
                request.setAttribute("productList", productList);
                RequestDispatcher dispatcher = request.getRequestDispatcher("/product/product_list.jsp");
                dispatcher.forward(request, response);
                break;
            default:
                listProduct(request,response);
                break;
        }
    }

    protected void listProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> productList = iProductService.getProduct();
        List<Product> listDetailProduct = new ArrayList<>();
        Product detailProduct = null;
        for (Product layId: productList) {
            detailProduct = iProductService.detailProduct(layId.getProductId());
            listDetailProduct.add(detailProduct);
        }
        request.setAttribute("listDetailProduct", listDetailProduct);
        request.setAttribute("productList", productList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/product/product_list.jsp");
        dispatcher.forward(request, response);
    }



    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
