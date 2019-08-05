require('sinatra')
require('sinatra/contrib/all') if development?
require_relative('./models/game.rb')
also_reload('./models/*')

get '/' do
  erb(:home)
end

get '/Welcome' do
  erb(:Welcome)
end

get '/play/:hand1/:hand2' do
  game = Game.new(params[:hand1].to_s(), params[:hand2].to_s())
  @outcome = game.play()
  erb(:result)
end
