package mvc.model;

import java.util.Date;

public class Product {
    private int productId;
    private String productName;
    private double price;
    private int quantity;
    private String description;
    private String status;
    private String image;
    private Date dateUpdate;
    private int categoryId;

    public Product(int productId, String productName, double price, int quantity, String description, String status, String image, Date dateUpdate, int categoryId) {
        this.productId = productId;
        this.productName = productName;
        this.price = price;
        this.quantity = quantity;
        this.description = description;
        this.status = status;
        this.image = image;
        this.dateUpdate = dateUpdate;
        this.categoryId = categoryId;
    }
}
