require 'sinatra'
set :session_secret, 'super secret'


get '/' do
  "Hello World"
end

get '/secret' do
  "Hello Me"
end

get '/random-cat' do
  @random_name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/cat-form' do
  erb :cat_form
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb :index
end
