package mvc.model;

import java.util.Arrays;

public class Dashboard {
    private int numProducts;
    private double revenues;
    private int numOrders;
    private int numCustomers;

    private int[] dateStatistic = new int[3];
    private int[] weekStatistic = new int[3];
    private int[] monthStatistic = new int[3];

    public int getNumProducts() {
        return numProducts;
    }

    public void setNumProducts(int numProducts) {
        this.numProducts = numProducts;
    }

    public double getRevenues() {
        return revenues;
    }

    public void setRevenues(double revenues) {
        revenues = revenues;
    }

    public int getNumOrders() {
        return numOrders;
    }

    public void setNumOrders(int numOrders) {
        this.numOrders = numOrders;
    }

    public int getNumCustomers() {
        return numCustomers;
    }

    public void setNumCustomers(int numCustomers) {
        this.numCustomers = numCustomers;
    }

    public int[] getDateStatistic() {
        return dateStatistic;
    }

    public void setDateStatistic(int[] dateStatistic) {
        this.dateStatistic = dateStatistic;
    }

    public int[] getWeekStatistic() {
        return weekStatistic;
    }

    public void setWeekStatistic(int[] weekStatistic) {
        this.weekStatistic = weekStatistic;
    }

    public int[] getMonthStatistic() {
        return monthStatistic;
    }

    public void setMonthStatistic(int[] monthStatistic) {
        this.monthStatistic = monthStatistic;
    }

    public Dashboard(int numProducts, double revenues, int numOrders, int numCustomers, int[] dateStatistic, int[] weekStatistic, int[] monthStatistic) {
        this.numProducts = numProducts;
        this.revenues = revenues;
        this.numOrders = numOrders;
        this.numCustomers = numCustomers;
        this.dateStatistic = dateStatistic;
        this.weekStatistic = weekStatistic;
        this.monthStatistic = monthStatistic;
    }

    @Override
    public String toString() {
        return "Dashboard{" +
                "numProducts=" + numProducts +
                ", revenues=" + revenues +
                ", numOrders=" + numOrders +
                ", numCustomers=" + numCustomers +
                ", dateStatistic=" + Arrays.toString(dateStatistic) +
                ", weekStatistic=" + Arrays.toString(weekStatistic) +
                ", monthStatistic=" + Arrays.toString(monthStatistic) +
                '}';
    }
}
