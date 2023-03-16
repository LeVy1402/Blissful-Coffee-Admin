package mvc.repository.impl;

import mvc.model.Category;
import mvc.model.Product;
import mvc.model.Staff;
import mvc.repository.DBConnection;
import mvc.repository.IProductRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ProductRepository implements IProductRepository {
    private static final String INSERT_PRODUCT_SQL = "INSERT INTO `product` (`product_id`,`product_name`,`price`,`quantity`,`description`,`product_status`,`image`,`date_update`,`category_id`) \n" +
            "VALUES\n" +
            "(?, ?, ?, ?, ?, ?, ?, ?, ?);";
    private static final String UPDATE_PRODUCT_SQL = "UPDATE `product` set `product_name` = ?,`price`= ?,`quantity` =?,`description` =?, `product_status` = ?, `image`=?, `category_id`=?\n" +
            "where `product_id` = ?;";
    private static final String SEARCH_TWO = "select * from `product` inner join `category` using(`category_id`) where `product_name` like ? or `price` = ?";
//    private static final String UPDATE_PRODUCT_SQL =  "UPDATE `product` set `product_name` = ?,`price`= ?,`quantity` =?,`description` =?, `product_status` = ?, `category_id`=?\n" +
//            "where `product_id` = ?;";

    @Override
    public ArrayList<Product> getProduct() {
        ArrayList<Product> products = new ArrayList<>();
        Connection connection = DBConnection.getConnection();
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        if (connection != null) {
            try {
                statement = connection.prepareStatement("select `product_id`, `product_name`, `price`, `quantity`, `description`, `product_status`, `image`, `date_update`, category.category_id, `category_name` from product\n" +
                        "inner join category\n" +
                        "on product.category_id = category.category_id\n" +
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
        Connection connection = DBConnection.getConnection();
        PreparedStatement preparedStatement = null;
        if (connection != null) {
            try {
                preparedStatement = connection.prepareStatement(INSERT_PRODUCT_SQL);
                preparedStatement.setInt(1, product.getProductId());
                preparedStatement.setString(2, product.getProductName());
                preparedStatement.setDouble(3, product.getPrice());
                preparedStatement.setInt(4, product.getQuantity());
                preparedStatement.setString(5, product.getDescription());
                preparedStatement.setString(6, product.getProductStatus());
                preparedStatement.setString(7, product.getImage());
                preparedStatement.setDate(8, (java.sql.Date) product.getDateUpdate());
                preparedStatement.setInt(9, product.getCategory().getCategoryId());
                System.out.println(preparedStatement);
                preparedStatement.executeUpdate();

            } catch (SQLException e) {
                throw new RuntimeException(e);
            } finally {
                try {
                    preparedStatement.close();
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                DBConnection.close();
            }
        }
    }

    @Override
    public boolean updateProduct(Product product) throws SQLException {
        boolean rowUpdate = false;
        Connection connection = DBConnection.getConnection();
        PreparedStatement preparedStatement = null;
        if (connection != null) {
            try {
                preparedStatement = connection.prepareStatement(UPDATE_PRODUCT_SQL);
                preparedStatement.setString(1, product.getProductName());
                preparedStatement.setDouble(2, product.getPrice());
                preparedStatement.setInt(3, product.getQuantity());
                preparedStatement.setString(4, product.getDescription());
                preparedStatement.setString(5, product.getProductStatus());
                preparedStatement.setString(6, product.getImage());
                preparedStatement.setInt(7, product.getCategory().getCategoryId());
                preparedStatement.setInt(8, product.getProductId());
//                "UPDATE `product` set `product_name` = ?,`price`= ?,`quantity` =?,`description` =?, `product_status` = ?, `image`=?, `category_id`=?\n" +
//                        "where `product_id` = ?;";

                rowUpdate = preparedStatement.executeUpdate() > 0;
            } finally {
                try {
                    preparedStatement.close();
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                DBConnection.close();
            }
        }
        return rowUpdate;
    }

    @Override
    public void editProduct(Product product) {
        int result = 0;
        Connection connection = DBConnection.getConnection();
        PreparedStatement preparedStatement = null;
        if (connection != null) {
            try {
                preparedStatement = connection.prepareStatement(UPDATE_PRODUCT_SQL);
                preparedStatement.setString(1, product.getProductName());
                preparedStatement.setDouble(2, product.getPrice());
                preparedStatement.setInt(3, product.getQuantity());
                preparedStatement.setString(4, product.getDescription());
                preparedStatement.setString(5, product.getProductStatus());
                preparedStatement.setString(6, product.getImage());
                preparedStatement.setInt(7, product.getCategory().getCategoryId());
                preparedStatement.setInt(8, product.getProductId());
//                "UPDATE `product` set `product_name` = ?,`price`= ?,`quantity` =?,`description` =?, `product_status` = ?, `image`=?, `category_id`=?\n" +
//                        "where `product_id` = ?;";

                result = preparedStatement.executeUpdate();
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                try {
                    preparedStatement.close();
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                DBConnection.close();
            }
        }
    }

    @Override
    public List<Product> searchStaffNamePrice(String search) {
        List<Product> productList = new ArrayList<>();
        Connection connection = DBConnection.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SEARCH_TWO);

            preparedStatement.setString(1, "%" + search + "%");
            preparedStatement.setString(2,  search);
//            preparedStatement.setString(2, search);

            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int productId = rs.getInt("product_id");
                String productName = rs.getString("product_name");
                double price = rs.getDouble("price");
                int quantity = rs.getInt("quantity");
                String description = rs.getString("description");
                String productStatus = rs.getString("product_status");
                String image = rs.getString("image");
                Date dateUpdate = rs.getDate("date_update");
                Category category = new Category(rs.getInt("category_id"), rs.getString("category_name"));

                Product product = new Product(productId, productName, price, quantity, description, productStatus, image, dateUpdate, category);

                productList.add(product);
                System.out.println(productList.size());
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return productList;
    }
}