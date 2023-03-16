package mvc.service;

import mvc.model.Product;
import mvc.model.Staff;

import java.sql.SQLException;
import java.util.ArrayList;

public interface IProductService {
    ArrayList<Product> getProduct();

    Product detailProduct(int productId);

    int del(int id);

    void addProduct(Product product);

    public boolean updateProduct(Product product) throws SQLException;

    void editProduct(Product product);
}
