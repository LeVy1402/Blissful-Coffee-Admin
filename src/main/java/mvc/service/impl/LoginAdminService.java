package mvc.service.impl;

import mvc.model.Staff;
import mvc.repository.ILoginAdminRepository;
import mvc.repository.impl.LoginAdminRepository;
import mvc.service.ILoginAdminService;

public class LoginAdminService implements ILoginAdminService {
    private ILoginAdminRepository iLoginAdminRepository = new LoginAdminRepository();

    @Override
    public Staff checkLogin(String email, String password) {
        return iLoginAdminRepository.checkLogin(email,password);
    }

    @Override
    public int ForgotPass(String txtEmail, String txtPass) {
        return iLoginAdminRepository.ForgotPass(txtEmail,txtPass);
    }
}
