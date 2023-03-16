package mvc.service.impl;

import mvc.model.Product;
import mvc.repository.IProductRepository;
import mvc.repository.impl.ProductRepository;
import mvc.service.IProductService;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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

    @Override
    public void addProduct(Product product) {
        iProductRepository.addProduct(product);
    }

    @Override
    public boolean updateProduct(Product product) throws SQLException {
        return iProductRepository.updateProduct(product);
    }

    @Override
    public void editProduct(Product product) {
        iProductRepository.editProduct(product);
    }

    @Override
    public List<Product> searchStaffNamePrice(String search) {
        return iProductRepository.searchStaffNamePrice(search);
    }


}
