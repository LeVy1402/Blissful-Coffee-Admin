package mvc.model;


import java.util.Date;

public class Order {
private int orderId;
private  Customer customerId;
private Date orderDate;
private String orderStatus;
private Staff processBy;

        public Order() {
        }

        public Order(int orderId, Customer customerId, Date orderDate, String orderStatus, Staff processBy) {
                this.orderId = orderId;
                this.customerId = customerId;
                this.orderDate = orderDate;
                this.orderStatus = orderStatus;
                this.processBy = processBy;
        }



        public int getOrderId() {
                return orderId;
        }

        public void setOrderId(int orderId) {
                this.orderId = orderId;
        }

        public Customer getCustomerId() {
                return customerId;
        }

        public void setCustomerId(Customer customerId) {
                this.customerId = customerId;
        }

        public Date getOrderDate() {
                return orderDate;
        }

        public void setOrderDate(Date orderDate) {
                this.orderDate = orderDate;
        }

        public String getOrderStatus() {
                return orderStatus;
        }

        public void setOrderStatus(String orderStatus) {
                this.orderStatus = orderStatus;
        }

        public Staff getProcessBy() {
                return processBy;
        }

        public void setProcessBy(Staff processBy) {
                this.processBy = processBy;
        }
}
