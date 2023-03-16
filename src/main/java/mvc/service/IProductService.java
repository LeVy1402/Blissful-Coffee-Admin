package mvc.service;

import mvc.model.Product;
import mvc.model.Staff;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public interface IProductService {
    ArrayList<Product> getProduct();

    Product detailProduct(int productId);

    int del(int id);

    void addProduct(Product product);

    public boolean updateProduct(Product product) throws SQLException;

    void editProduct(Product product);

    List<Product> searchStaffNamePrice(String search);
}
