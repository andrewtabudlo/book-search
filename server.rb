require 'sinatra'
require 'sinatra/reloader'
require 'googlebooks'

get '/' do
  erb :index
end

post '/search' do
  @books = GoogleBooks.search(params[:book])
  erb :searchresults
end

get '/search/selection/:id' do
  @book = GoogleBooks.search(params[:id]).first
  erb :selection
end
