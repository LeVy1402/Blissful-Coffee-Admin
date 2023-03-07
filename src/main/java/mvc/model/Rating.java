package mvc.model;

import java.util.Date;

public class Rating {
    private int ratingId;
    private Product product;
    private double score;
    private String  remarks;
    private Date dateRecorded;
    private Customer customer;

    public Rating(int ratingId, Product product, double score, String remarks, Date dateRecorded, Customer customer) {
        this.ratingId = ratingId;
        this.product = product;
        this.score = score;
        this.remarks = remarks;
        this.dateRecorded = dateRecorded;
        this.customer = customer;
    }

    public int getRatingId() {
        return ratingId;
    }

    public void setRatingId(int ratingId) {
        this.ratingId = ratingId;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public double getScore() {
        return score;
    }

    public void setScore(double score) {
        this.score = score;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public Date getDateRecorded() {
        return dateRecorded;
    }

    public void setDateRecorded(Date dateRecorded) {
        this.dateRecorded = dateRecorded;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }
}
