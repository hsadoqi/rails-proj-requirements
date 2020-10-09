class ReviewsController < ApplicationController

    def index 
        # byebug
        if params[:user_id]
            @user = User.find(params[:user_id])
            @reviews = @user.reviews 
        else
            @reviews = Review.all 
        end 
    end 

    def new 
        @review = Review.new(user_id: params[:user_id])
    end 

    def create 
        byebug
    end 

    private 

    def review_params 
        params.require(:review).permit(:rating, :content, :restaurant_id, :user_id)
    end 
end
