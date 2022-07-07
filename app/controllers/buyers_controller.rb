class BuyersController < ApplicationController

    get '/buyers' do
        buyers = Buyer.all
        buyers.to_json
      end

      post "/buyers" do 
        serialize(Buyer.create(buyer_params))
      end

private 

def buyer_params
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