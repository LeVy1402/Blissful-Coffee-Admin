package mvc.service;

import mvc.model.Staff;

public interface ILoginAdminService {
    public Staff checkLogin(String email, String password) ;
}
