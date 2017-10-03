require 'sinatra'

get '/' do
  redirect to('/home')
end

get '/home' do
  erb :index
end

get '/gallery' do
  redirect to('/portfolio')
end

get '/portfolio' do
  erb :gallery
end

get '/about_me' do
  @skills = ['git', 'HTML', 'CSS', 'Ruby', 'Poker']
  @interests = ['bitcoin', 'art', 'music', 'films', 'tea']
  erb :about_me
end

get '/favourites' do
  @links = ['http://www.amazon.ca', 'http://www.reddit.com', 'http://www.bittrex.com', 'http://www.pokerstars.com', 'http://www.ruby-doc.org']
  erb :favourites
end
