package mvc.repository;

import mvc.model.Role;

import java.util.List;

public interface IRoleRepository {
    Role getRoleById(int id);
    List<Role> getAllRoles();
}
