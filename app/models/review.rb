require 'pry'

class Review < ActiveRecord::Base
    
    belongs_to :artist
    belongs_to :user

end