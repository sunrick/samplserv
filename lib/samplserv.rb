require 'sinatra'
require 'pry'

module Sampleserv 
  class App < Sinatra::Base
    set :logging, true

    post '/:sound' do
      v = params['v'] ? params['v'].to_i : nil
      spawn("afplay samples/#{params['sound']}#{v}.mp3")
      "You're playing: #{params['sound']}"
    end

    post '/stop' do
      spawn("killall afplay")
    end

    run! if app_file == $0
  end
end

