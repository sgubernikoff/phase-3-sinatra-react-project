class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get '/' do
    "Concert Concert"
  end

  get '/concerts' do
    concerts = Concert.all.order(:artist).limit(10)
    concerts.to_json
  end

  get '/concerts/:id' do
    concerts = Concert.find(params[:id])
    concerts.to_json(include: { reviews: { include: :user } })
  end

  post '/concerts/:id' do
    concerts = Concert.create(artist:params[:artist], date:params[:date], genre:params[:genre], venue:params[:venue], favorite_concert:params[:favorite_concert],)
    concerts.to_json
  end

  delete '/concerts/:id' do
    concerts = Concert.find(params[:id])
    concerts.destroy
    concerts.to_json
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
