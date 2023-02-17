class ReviewsController < ApplicationController
    def new
    end
    def create
        #@review = Review.new(review_params)
        #@review.save
        redirect_to root_path, notice: "Review created successfully."
        #redirect_to tshirt_path(review.tshirt_id)
    end

    private
    
        def review_params
            params.require(:review).permit(:review, :picture)
        end
end
