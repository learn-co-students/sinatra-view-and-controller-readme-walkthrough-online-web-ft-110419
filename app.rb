require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
  	@reversed_string = params[:string].reverse
    erb :reversed
  end

  get '/friends' do
  	@friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
  	erb :friends
    # Write your code here!

  end
end