class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add routes
  # get '/art' do
  #   art = Art.all
  #   art.to_json
  # end

  get '/artists' do
    artists = Artists.all
    artists.to_json
    # puts "artists"
  end


  # post '/art' do
  #   new_art = Art.create(
  #     name: params[:name],
  #     image: params[:image],
  #     medium: params[:medium],
  #     link: params[:link],
  #     dated_added: params[:dated_added],
  #     foreign_key: params[:foreign_key],
  #   )
  #   new_message.to_json
  # end

  # patch '/messages/:id' do
  #   message = Message.find(params[:id])
  #   message.update(
  #     body: params[:body]
  #   )
  #   message.to_json
  # end

  # delete '/messages/:id' do
  # message = Message.find(params[:id])
  # message.destroy
  # message.to_json
  # end
  private 

  # a method used to specify which keys are allowed through params into the controller
  # we use this method to create a list of what's permitted to be passed to .create or .update
  # within controller actions.
  # def dog_params
  #   allowed_params = %w(name birthdate breed image_url)
  #   params.select {|param,value| allowed_params.include?(param)}
  # end

  # def serialize(artists)
  #   artists.to_json(
  #     include: {
  #       name: 
  #     }
  #   )
  # end



end
