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
    allowed_params = %w(name avatar email location account_type)
    params.select {|param,value| allowed_params.include?(param)}
  end

  def serialize(objects)
    objects.to_json(
      include: {
        accounts: {
          only: [:id, :name, :avatar, :email, :location, :account_type]
        }
      }
    )
  end

  end