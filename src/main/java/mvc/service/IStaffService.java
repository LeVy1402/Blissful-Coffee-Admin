package mvc.service;

import mvc.model.Staff;

import java.sql.SQLException;
import java.util.List;

public interface IStaffService {
    List<Staff> selectAllStaff() throws SQLException;
    Staff getStaffById(int id);
    public boolean updateStaff(Staff staff) throws SQLException;
    public boolean deleteStaff(int idStaff) throws SQLException;
    void addStaff(Staff staff);
}
