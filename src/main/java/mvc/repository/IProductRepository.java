package mvc.repository;

import mvc.model.Product;

import java.util.ArrayList;

public interface IProductRepository {
    ArrayList<Product> getProduct();

    Product detailProduct(int productId);

    int del(int id);
}
