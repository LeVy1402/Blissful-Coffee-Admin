package mvc.repository.impl;

import mvc.model.Staff;
import mvc.repository.DBConnection;
import mvc.repository.ILoginAdminRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginAdminRepository implements ILoginAdminRepository {
    private static final String SELECT_LOGIN = "select * from `staff` where `email` = ? and `password` = ?";

    @Override
    public Staff checkLogin(String email, String password) {
        Connection connection = DBConnection.getConnection();
        ResultSet resultSet = null;
        PreparedStatement preparedStatement = null;
        if (connection != null) {
            try {
                preparedStatement = connection.prepareStatement(SELECT_LOGIN);
                preparedStatement.setString(1, email);
                preparedStatement.setString(2, password);

                resultSet = preparedStatement.executeQuery();
                while (resultSet.next()) {
                    Staff staff = new Staff(resultSet.getString(1), resultSet.getString(2));
                    return staff;
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
        return null;
    }

    @Override
    public int ForgotPass(String txtEmail, String txtPass) {
        System.out.println(txtEmail + txtPass);
        int result = 0;
        try {
            PreparedStatement preparedStatement = DBConnection.getConnection().prepareStatement("UPDATE staff\n" +
                    "SET password = ?\n" +
                    "WHERE email = ?;");
            preparedStatement.setString(1,txtPass);
            preparedStatement.setString(2,txtEmail);
            result = preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

}
