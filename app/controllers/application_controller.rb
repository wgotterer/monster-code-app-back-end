require 'pry'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  post '/users' do
    User.create(
      name: params[:name],
      avatar_id: params[:avatar_id]
    )
  end

end
