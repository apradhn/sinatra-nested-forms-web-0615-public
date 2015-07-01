require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :'root'
    end

    get '/new' do 
      erb :'pirates/new'
    end

    post '/pirates' do 
      @name = params[:pirate][:name]
      @height = params[:pirate][:height]
      @weight = params[:pirate][:weight]
      @ships = params[:pirate][:ships].collect{|num, data| data}
      erb :'pirates/show'
    end

  end
end
