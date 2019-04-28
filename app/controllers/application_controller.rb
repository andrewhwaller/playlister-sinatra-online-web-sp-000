class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  set :session_secret, "my_application_secret"
  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :index
  end

  get '/songs' do
    @songs = Song.all
    erb :'/songs/index'
  end

  get '/genres' do
  #list all genres w/ clickable link to /show/genre[:id]
  end

  get '/artists' do
  #list all artists w/ clickable link to /show/artist[:id]
  end

  get '/songs/:slug' do
    #show page with links to song artist and genres
  end

  get '/genres/:slug' do
    #show page with links to song artist and songs
  end
end
