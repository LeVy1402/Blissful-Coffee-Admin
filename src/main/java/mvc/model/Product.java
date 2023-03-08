package mvc.model;
import java.util.Date;

public class Product {
    private int productId;
    private String productName;
    private double price;
    private int quantity;
    private String description;
    private String productStatus;
    private String image;
    private Date dateUpdate;
    private Category category;


    public Product(int productId, String productName, double price, int quantity, String description, String productStatus, String image, Date dateUpdate, Category category) {
        this.productId = productId;
        this.productName = productName;
        this.price = price;
        this.quantity = quantity;
        this.description = description;
        this.productStatus = productStatus;
        this.image = image;
        this.dateUpdate = dateUpdate;
        this.category = category;
    }



    public Product(String productName, double price, int quantity, String description, String productStatus, String image, Category category) {
        this.productName = productName;
        this.price = price;
        this.quantity = quantity;
        this.description = description;
        this.productStatus = productStatus;
        this.image = image;
        this.category = category;
    }
    public Product(int productId, String productName, String image, String productStatus) {
        this.productId = productId;
        this.productName = productName;
        this.image = image;
        this.productStatus = productStatus;
    }


    public Product(int productId, String productName, double price, int quantity, String description, String productStatus, String image, Category category) {
    }

    public Product(int productId, String productName, double price, int quantity, String description, String productStatus, Category category) {
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getProductStatus() {
        return productStatus;
    }

    public void setProductStatus(String productStatus) {
        this.productStatus = productStatus;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Date getDateUpdate() {
        return dateUpdate;
    }

    public void setDateUpdate(Date dateUpdate) {
        this.dateUpdate = dateUpdate;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    @Override
    public String toString() {
        return "Product{" +
                "productId=" + productId +
                ", productName='" + productName + '\'' +
                ", price=" + price +
                ", quantity=" + quantity +
                ", description='" + description + '\'' +
                ", productStatus='" + productStatus + '\'' +
                ", image='" + image + '\'' +
                ", dateUpdate=" + dateUpdate +
                ", category=" + category +
                '}';
    }
}