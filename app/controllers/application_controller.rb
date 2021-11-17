require 'pry'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  post '/users' do
    user = User.create(
      name: params[:name],
      avatar_id: params[:avatar_id],
      level_id: params[:level_id]
    )
    user.to_json
  end
  get '/users' do
    User.all.to_json
  end
  get "/avatars" do 
    Avatar.all.to_json
  end

  get "/levels/:id" do 
    level = Level.find(params[:id])
    level.to_json(include: :users)
  end


  get "/user/current" do
    user = User.last
    user.to_json(include: :avatar)
  end

  get "/levels/monster/:id" do
    level = Level.find(params[:id])
    level.to_json(include: :monsters)
  end

  get "/monsters" do
    Monster.all.to_json
  end

  get "/levels/questions/:id" do
    level = Level.find(params[:id])
    level.to_json(include: :questions)
  end

  get "/users/last" do 
    User.last.to_json
  end

  patch "/users/last" do 
    user = User.last
    user.update(
      level_id: params[:level_id]
    )
    user.to_json
  end

  get "/user/level/monster/:id" do
    level = Level.find(params[:id])
    level.to_json(include: :monsters)
  end

  get "/users/ordered" do
    users = User.all.order(level_id: :desc)
    users.to_json
  end

end
