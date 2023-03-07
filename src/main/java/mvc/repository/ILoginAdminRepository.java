package mvc.repository;

import mvc.model.Staff;

public interface ILoginAdminRepository {
    public Staff checkLogin(String email, String password) ;
}
