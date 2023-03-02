package mvc.repository.impl;
import mvc.model.Role;
import mvc.repository.DBConnection;
import mvc.repository.IRoleRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class RoleRepository implements IRoleRepository {

    private static final String SELECT_ROLE_BY_ID = "SELECT `role_id` ,`role_mame` from `role` where `role_id` = ?";
    private static final String SELECT_ALL_ROLE = "SELECT `role_id`,`role_name` from`role`";

    @Override
    public Role getRoleById(int id) {
        Role role = null;
        Connection connection = DBConnection.getConnection();
        ResultSet resultSet = null;
        PreparedStatement preparedStatement = null;
        if (connection != null) {
            try {
                preparedStatement = connection.prepareStatement(SELECT_ROLE_BY_ID);
                preparedStatement.setInt(1, id);
                resultSet = preparedStatement.executeQuery();
                while (resultSet.next()) {
                    int roleId = resultSet.getInt("role_id");
                    String roleName = resultSet.getString("role_name");
                    role = new Role(roleId, roleName);
                }
            } catch (SQLException ex) {
                throw new RuntimeException(ex);
            } finally {
                try {
                    resultSet.close();
                    preparedStatement.close();
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                DBConnection.close();
            }
        }
        return role;
    }

    @Override
    public List<Role> getAllRoles() {
        List<Role> roleList = new ArrayList<>();
        Connection connection = DBConnection.getConnection();
        ResultSet resultSet = null;
        PreparedStatement preparedStatement = null;
        if (connection != null) {
            try {
                preparedStatement = connection.prepareStatement(SELECT_ALL_ROLE);
                resultSet = preparedStatement.executeQuery();
                while (resultSet.next()) {
                    int roleId = resultSet.getInt("role_id");
                    String roleName = resultSet.getString("role_mame");
                    Role role = new Role(roleId, roleName);
                    roleList.add(role);
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            } finally {
                try {
                    resultSet.close();
                    preparedStatement.close();
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                DBConnection.close();
            }
        }
        return roleList;
    }
}
