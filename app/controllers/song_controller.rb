class SongsController < ApplicationController
    set :views, "app/views/songs"

    get '/songs' do
        @songs = Song.all
        erb :index
    end

    get '/songs/new' do
        erb :new
    end
    
    get '/songs/:slug' do 
        @song = Song.find_by_slug(params[:slug])
        erb :show
    end
    post '/songs' do
        new_Art = Artist.create(params)
        redirect
    end
end
