package mvc.controller;

import mvc.model.Category;
import mvc.model.Product;
import mvc.model.Role;
import mvc.model.Staff;
import mvc.service.IProductService;
import mvc.service.impl.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
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
        System.out.println(action);
        switch (action) {
            case "create":
                showNewFormProduct(request, response);
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

    private void showNewFormProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/product/product_add.jsp");
        dispatcher.forward(request, response);
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
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        System.out.println(action);
        switch (action) {
            case "create":
                createProduct(request, response);
                break;
            case "update":
                try {
                    updateProduct(request, response);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
        }
    }

    private void updateProduct(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        int productId = 0;
        try {
            productId = Integer.parseInt(request.getParameter("productId"));
        }catch (NumberFormatException e){

        }
        String productName = request.getParameter("productName");
        double price = Double.parseDouble(request.getParameter("price"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        System.out.println(quantity);
        String description = request.getParameter("description");
        String productStatus = request.getParameter("productStatus");
        String image =  request.getParameter("image");
        if(image == null || image.equals("")){
            Product getimg = iProductService.detailProduct(productId);
            image = getimg.getImage();
        }
//        Date dateUpdate = request.getParameter("datUpdate");
        int categoryId = Integer.parseInt(request.getParameter("categoryId"));
        System.out.println(categoryId);
        Category category = new Category(categoryId, null);


        Product product = new Product(productId,productName, price, quantity, description, productStatus, image, category) ;
        System.out.println(product.toString());
        iProductService.editProduct(product);
        response.sendRedirect(request.getContextPath()+"/products");
    }

    private void createProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String productName = request.getParameter("productName");
        double price = Double.parseDouble(request.getParameter("price"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        System.out.println(quantity);
        String description = request.getParameter("description");
        String productStatus = request.getParameter("productStatus");
        String image =  request.getParameter("image");
//        Date dateUpdate = request.getParameter("datUpdate");
        int categoryId = Integer.parseInt(request.getParameter("categoryId"));
        System.out.println(categoryId);
        Category category = new Category(categoryId, null);

        Product product = new Product(productName, price, quantity, description, productStatus, image, category) ;
        iProductService.addProduct(product);
        response.sendRedirect(request.getContextPath()+"/products");

    }
}
