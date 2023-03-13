package mvc.service;

import mvc.model.Staff;

public interface ILoginAdminService {
    public Staff checkLogin(String email, String password) ;

    public int ForgotPass(String txtEmail, String txtPass);
}
