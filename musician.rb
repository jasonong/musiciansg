require 'rubygems'
require 'sinatra'
require 'activerecord'
dbconfig = YAML.load(File.read('config/database.yml'))
ActiveRecord::Base.establish_connection dbconfig['production']

require 'user'

get '/' do
  'This is gonna be a site on working musicians in Singapore.'
end

get '/users' do
  @users = User.find(:all)
  erb :list
end

get '/users/new' do
  @user = User.new
  erb :new
end

post '/users/create' do
  puts params.inspect
  @user = User.new(params[:user])
  if @user.save
    redirect '/users'
  else
    redirect '/users/new'
  end
end
