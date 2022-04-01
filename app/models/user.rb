require 'pry'

class User < ActiveRecord::Base
    
    has_many :reviews
    has_many :artists, through: :areviews


    def favorite_product
        self.reviews.all.order(:star_rating).last
    end

end