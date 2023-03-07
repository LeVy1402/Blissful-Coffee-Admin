package mvc.service;

import mvc.model.Product;

import java.util.ArrayList;

public interface IProductService {
    ArrayList<Product> getProduct();

    Product detailProduct(int productId);

    int del(int id);
}
