package mvc.service.impl;

import mvc.model.Rating;
import mvc.repository.IReviewRepository;
import mvc.repository.impl.ReviewRepository;
import mvc.service.IReviewService;

import java.sql.SQLException;
import java.util.List;

public class ReviewService implements IReviewService {
    private IReviewRepository iReviewRepository = new ReviewRepository();
    @Override
    public List<Rating> selectAllRating() throws SQLException {
        return iReviewRepository.selectAllRating();
    }
}
