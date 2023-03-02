package mvc.service.impl;

import mvc.model.Role;
import mvc.repository.IRoleRepository;
import mvc.repository.impl.RoleRepository;
import mvc.service.IRoleService;

import java.util.List;


public class RoleService implements IRoleService {
    private IRoleRepository repository= new RoleRepository() {
    };


    @Override
    public Role getRoleById(int id) {
        return repository.getRoleById(id);
    }

    @Override
    public List<Role> getAllRoles() {
        return repository.getAllRoles();
    }
}
