class ArtistsController < ApplicationController

    get '/artists' do
        artists = Artist.all
        artists.to_json
      end
  end