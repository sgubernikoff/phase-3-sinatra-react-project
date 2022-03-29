require 'pry'
class ApplicationController < Sinatra::Base
  set default_content_type: "application/json"
  
  get '/' do
    "Concert Concert"
  end


  get '/reviews/' do
    reviews = Review.all.order(:concert_rating).limit(10)
    reviews.to_json
  end

  get '/reviews/:id' do
    reviews = Review.find(params[:id])
    reviews.to_json
  end

  post '/reviews/' do
    reviews = Review.create(user_id:params[:user_id], concert_id:params[:concert_id], concert_rating:params[:concert_rating], comment:params[:comment])
    reviews.to_json
  end

  delete '/reviews/:id' do
    reviews = Review.find(params[:id])
    reviews.destroy
    reviews.to_json
  end

  patch '/reviews/:id' do
    review = Review.find(params[:id])
    review.update(
      concert_rating: params[:concert_rating],
      comment: params[:comment]
    )
    review.to_json
  end

end
