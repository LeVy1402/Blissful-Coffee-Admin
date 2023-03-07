package mvc.repository.impl;

import mvc.model.Category;
import mvc.model.Product;
import mvc.model.Staff;
import mvc.repository.DBConnection;
import mvc.repository.IProductRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

public class ProductRepository implements IProductRepository {

    private static final String INSERT_PRODUCT_SQL = "INSERT INTO `product`" + "  (`product_id`,`product_name`,`price`,`quantity`,`description`,`product_status`,`image`,`date_update`,`category_id`) VALUES " +
            " (?,?, ?,?,?,?,?,?,?)";

    @Override
    public ArrayList<Product> getProduct() {
        ArrayList<Product> products = new ArrayList<>();
        Connection connection = DBConnection.getConnection();
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        if (connection != null) {
            try {
                statement = connection.prepareStatement("select `product_id`, `product_name`, `price`, `quantity`, `description`, `product_status`, `image`, `date_update`, category.category_id, `category_name` \n" +
                        "from product\n" +
                        "inner join category\n" +
                        "on product.category_id = category.category_id \n" +
                        "order by product_id desc;");
                resultSet = statement.executeQuery();
                while (resultSet.next()) {
                    int productId = resultSet.getInt("product_id");
                    String productName = resultSet.getString("product_name");
                    double price = resultSet.getDouble("price");
                    int quantity = resultSet.getInt("quantity");
                    String description = resultSet.getString("description");
                    String productStatus = resultSet.getString("product_status");
                    String image = resultSet.getString("image");
                    Date dateUpdate = resultSet.getDate("date_update");
                    Category category = new Category(resultSet.getInt("category_id"), resultSet.getString("category_name"));

                    Product product = new Product(productId, productName, price, quantity, description, productStatus, image, dateUpdate, category);

                    products.add(product);

                }
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            } finally {
                try {
                    resultSet.close();
                    statement.close();
//                connection.close();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                DBConnection.close();
            }
        }
        return products;

    }

    @Override
    public Product detailProduct(int productId) {
        Product product = null;
        Connection connection = DBConnection.getConnection();
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        if (connection != null) {
            try {
                preparedStatement = connection.prepareStatement("select `product_id`, `product_name`, `price`, `quantity`, `description`, `product_status`, `image`, `date_update`, category.category_id, `category_name` from product\n" +
                        "inner join category \n" +
                        "on product.category_id = category.category_id\n" +
                        "where product_id = ?;");
                preparedStatement.setInt(1, productId);
                resultSet = preparedStatement.executeQuery();
                if (resultSet.next()) {
                    String productName = resultSet.getString("product_name");
                    double price = resultSet.getDouble("price");
                    int quantity = resultSet.getInt("quantity");
                    String description = resultSet.getString("description");
                    String productStatus = resultSet.getString("product_status");
                    String image = resultSet.getString("image");
                    Date dateUpdate = resultSet.getDate("date_update");
                    Category category = new Category(resultSet.getInt("category_id"), resultSet.getString("category_name"));

                    product = new Product(productId, productName, price, quantity, description, productStatus, image, dateUpdate, category);

                }
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            } finally {
                try {
                    resultSet.close();
                    preparedStatement.close();
//                connection.close();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                DBConnection.close();
            }
        }
        return product;
    }

    @Override
    public int del(int id) {
        Connection connection = DBConnection.getConnection();
        PreparedStatement preparedStatement = null;
        int result = 0;
        if (connection != null) {
            try {
                preparedStatement = connection.prepareStatement("delete from product where product_id = ?; ");
                preparedStatement.setInt(1, id);
                result = preparedStatement.executeUpdate();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            } finally {
                try {
                    preparedStatement.close();
//                connection.close();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                DBConnection.close();
            }
        }
        return result;
    }

    @Override
    public void addProduct(Product product) {

    }
}
