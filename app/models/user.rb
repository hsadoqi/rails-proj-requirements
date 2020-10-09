class User < ApplicationRecord
    has_many :reviews 
    has_many :restaurants, through: :reviews
    # check out the commented-out code below to understand what it would like as a class method
    scope :most_reviews, -> { joins(:reviews).group(:count).first }

    # def reviews
    #     Review.all.select {|review| review.user == self}
    # end 

    # def restaurants 
    #     reviews.map {|review| review.restaurant }
    # end 

    # def self.most_reviews
    #     # break this down on your own in rails console to see what each part of this returns
    #     joins(:reviews).group(:count).first
    # end 
end
