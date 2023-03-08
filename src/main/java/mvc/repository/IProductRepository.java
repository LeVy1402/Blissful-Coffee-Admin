package mvc.repository;

import mvc.model.Product;
import mvc.model.Staff;

import java.sql.SQLException;
import java.util.ArrayList;

public interface IProductRepository {
    ArrayList<Product> getProduct();

    Product detailProduct(int productId);

    int del(int id);

    void addProduct(Product product);

    boolean updateProduct(Product product) throws SQLException;
}
