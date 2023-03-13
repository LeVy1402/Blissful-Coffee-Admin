package mvc.repository;

import mvc.model.Staff;

public interface ILoginAdminRepository {
    public Staff checkLogin(String email, String password) ;

    public int ForgotPass(String txtEmail, String txtPass);
}
