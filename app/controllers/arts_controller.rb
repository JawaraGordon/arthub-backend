class ArtsController < ApplicationController

    get '/art' do
        art = Art.all
        art.to_json
      end
   
    post "/art" do 
      serialize(Art.create(art_params))
      
    end

    patch "/art/:id" do
        art = Art.find(params[:id])
        art.update(art_params)
        serialize(art)
      end
  
    delete "/art/:id" do 
      art = Art.find(params[:id])
      art.destroy 
      serialize(art)
    end
  
    private 
  
   
    def art_params
      allowed_params = %w(name image_url genre location link artist_id)
      params.select {|param,value| allowed_params.include?(param)}
    end
  
    def serialize(objects)
      objects.to_json(
        include: {
          artist: {
            only: [:id, :name, :image_url, :genre, :location, :link, :artist_id]
          }
        }
      )
    end
  end
  