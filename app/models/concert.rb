require 'pry'
class Concert < ActiveRecord::Base
    
    has_many :reviews
    has_many :users, through: :reviews

    def average_rating
        self.reviews.all.average(:concert_rating).to_f
    end

end