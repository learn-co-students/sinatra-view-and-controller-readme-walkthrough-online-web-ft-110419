require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    puts params
    erb :reversed
  end

  get "/" do
    @user = "Ian"
   
    erb :index # @user will be defined as 'Ian' in the view
  end
   
  get "/profile" do
    erb :profile # @user will be nil here
  end

  get '/friends' do
    # Write your code here!
    post '/reverse' do
      original_string = params["string"]
      reversed_string = original_string.reverse
     
      erb :reversed
    end
  end
end