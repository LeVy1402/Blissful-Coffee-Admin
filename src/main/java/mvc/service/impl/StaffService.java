package mvc.service.impl;

import mvc.model.Staff;
import mvc.repository.IStaffRepository;
import mvc.repository.impl.StaffRepository;
import mvc.service.IStaffService;

import java.sql.SQLException;
import java.util.List;

public class StaffService implements IStaffService {
    private IStaffRepository iStaffRepository = new StaffRepository();

    @Override
    public List<Staff> selectAllStaff() throws SQLException {
        return iStaffRepository.selectAllStaff();
    }

    @Override
    public Staff getStaffById(int id) {
        return iStaffRepository.getStaffById(id);
    }

    @Override
    public boolean updateStaff(Staff staff) throws SQLException {
        return iStaffRepository.updateStaff(staff);
    }

    @Override
    public boolean deleteStaff(int idStaff) throws SQLException {
        return iStaffRepository.deleteStaff(idStaff);
    }

    @Override
    public void addStaff(Staff staff) {
        iStaffRepository.addStaff(staff);
    }
}
