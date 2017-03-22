require('sinatra')
require('sinatra/reloader')
require('./lib/rock')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/results') do
  @rps = params.fetch('rps')
  rps = ["rock","paper","scizzor"]
  @other_player_play = rps[rand(rps.size)]
  @result = params.fetch('rps').rock(@other_player_play)
  erb(:results)
end
