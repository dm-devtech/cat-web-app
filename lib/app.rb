require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  "Hello World"
end

get '/secret' do
  "Hello Me"
end

get '/cat' do
  "<div style='border: 2px dashed red'>
  <img src='http://bit.ly/1eze8aE'>
  </div>"
end
