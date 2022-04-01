require 'pry'

class Review < ActiveRecord::Base
    
    belongs_to :artist
    belongs_to :user


    def print_review
        "Review for #{concert.artist} by #{user.username}: #{concert_rating} stars! #{comment}"
        end

end