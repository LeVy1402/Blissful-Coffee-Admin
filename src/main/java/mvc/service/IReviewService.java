package mvc.service;

import mvc.model.Rating;

import java.sql.SQLException;
import java.util.List;

public interface IReviewService {
    List<Rating> selectAllRating() throws SQLException;
}
