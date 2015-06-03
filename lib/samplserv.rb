require 'sinatra'

require "samplserv/version"

module Samplserv
end

helpers Samplserv

post '/after' do
  v = params['v'] ? params['v'].to_i : 1
  spawn("afplay samples/After#{v}.mp3")
end

post '/beat' do
  spawn("afplay samples/beat.mp3")
end

post '/better' do
  v = params['v'] ? params['v'].to_i : 1
  spawn("afplay samples/Better#{v}.mp3")
end

post '/doit' do
  v = params['v'] ? params['v'].to_i : 1
  spawn("afplay samples/DoIt#{v}.mp3")
end

post '/ever' do
  v = params['v'] ? params['v'].to_i : 1
  spawn("afplay samples/Ever#{v}.mp3")
end

post '/faster' do
  v = params['v'] ? params['v'].to_i : 1
  spawn("afplay samples/Faster#{v}.mp3")
end

post '/harder' do
  v = params['v'] ? params['v'].to_i : 1
  spawn("afplay samples/Harder#{v}.mp3")
end

post '/hour' do
  v = params['v'] ? params['v'].to_i : 1
  spawn("afplay samples/Hour#{v}.mp3")
end

post '/makeit' do
  v = params['v'] ? params['v'].to_i : 1
  spawn("afplay samples/MakeIt#{v}.mp3")
end

post '/makesus' do
  v = params['v'] ? params['v'].to_i : 1
  spawn("afplay samples/MakesUs#{v}.mp3")
end

post '/morethan' do
  v = params['v'] ? params['v'].to_i : 1
  spawn("afplay samples/MoreThan#{v}.mp3")
end

post '/never' do
  v = params['v'] ? params['v'].to_i : 1
  spawn("afplay samples/Never#{v}.mp3")
end

post '/our' do
  v = params['v'] ? params['v'].to_i : 1
  spawn("afplay samples/Our#{v}.mp3")
end

post '/over' do
  v = params['v'] ? params['v'].to_i : 1
  spawn("afplay samples/Over#{v}.mp3")
end

post '/stronger' do
  v = params['v'] ? params['v'].to_i : 1
  spawn("afplay samples/Stronger#{v}.mp3")
end

post '/workis' do
  v = params['v'] ? params['v'].to_i : 1
  spawn("afplay samples/WorkIs#{v}.mp3")
end

post '/workit' do
  v = params['v'] ? params['v'].to_i : 1
  spawn("afplay samples/WorkIt#{v}.mp3")
end

post '/stop' do
  spawn("killall afplay")
end

