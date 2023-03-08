package mvc.model;

public class OrderDetail {
    private int detailId;
    private Product product;
    private Order order;
    private int quantity;

    public OrderDetail(int detailId, Product product, Order order, int quantity) {
        this.detailId = detailId;
        this.product = product;
        this.order = order;
        this.quantity = quantity;
    }

    public int getDetailId() {
        return detailId;
    }

    public void setDetailId(int detailId) {
        this.detailId = detailId;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public Order getOrder() {
        return order;
    }

    public void setOrder(Order order) {
        this.order = order;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
