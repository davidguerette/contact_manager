require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

require_relative 'models/contact'

get '/' do
  @contacts = Contact.all.limit(2)
  erb :index
end

get '/contacts/:id' do
  id = params[:id]
  @contact = Contact.find(id)
  erb :show
end

get '/' do
  erb :index
end
