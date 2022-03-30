require 'pry'
class ApplicationController < Sinatra::Base
  set default_content_type: "application/json"
  
  get '/' do
    "Concert Concert"
  end


  get '/reviews/' do
    reviews = Review.all
    reviews.to_json
  end

  get '/concerts/' do
    concerts = Concert.all
    concerts.to_json(include: { reviews: { include: :user } })
  end

  get '/reviews/:id' do
    reviews = Review.find(params[:id])
    reviews.to_json
  end

  post '/reviews/' do
    reviews = Review.create(params)
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
