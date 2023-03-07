package mvc.service.impl;

import mvc.model.Product;
import mvc.repository.IProductRepository;
import mvc.repository.impl.ProductRepository;
import mvc.service.IProductService;

import java.util.ArrayList;

public class ProductService implements IProductService {
    private IProductRepository iProductRepository = new ProductRepository();
    @Override
    public ArrayList<Product> getProduct() {
        return iProductRepository.getProduct();
    }

    @Override
    public Product detailProduct(int productId) {
        return iProductRepository.detailProduct(productId);
    }

    @Override
    public int del(int id) {
        return iProductRepository.del(id);
    }

    public void addProduct(Product product) {
        iProductRepository.addProduct(product);
    }

}
