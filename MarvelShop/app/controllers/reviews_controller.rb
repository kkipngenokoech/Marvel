class ReviewsController < ApplicationController
    def new
    end
    def create
        review = Review.new(review_params)
        review.save
        redirect_to tshirt_path(review.tshirt_id)
        flash[:success] = "Review created successfully."
    end

    private
    
        def review_params
            params.require(:review).permit(:review, :picture)
        end
end
