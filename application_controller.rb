require 'bundler'
Bundler.require

require './models/Video_Games.rb'

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/results' do
    puts params
    erb :results
end

end
