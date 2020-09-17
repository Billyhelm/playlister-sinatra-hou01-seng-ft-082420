class ArtistsController < ApplicationController
    set :views, "app/views/artists"

    get '/artists' do
        @artists = Artist.all
        erb :index
    end

    # get '/artits/new' do
    #     erb :new
    # end

    get '/artists/:slug' do 
        @artist = Artist.find_by_slug(params[:slug])
        erb :show
    end

    # post '/artists' do
    #     new_art = Artist.create(params)
    #     redirect
    # end
end
