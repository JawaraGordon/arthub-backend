class BuyersController < ApplicationController

    get '/buyers' do
        buyers = Buyer.all
        buyers.to_json
      end
  end