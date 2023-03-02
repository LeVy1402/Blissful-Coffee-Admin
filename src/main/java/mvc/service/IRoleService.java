package mvc.service;

import mvc.model.Role;

import java.util.List;

public interface IRoleService {
    Role getRoleById(int id);
    List<Role> getAllRoles();
}
