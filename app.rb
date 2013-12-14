require 'bundler'
Bundler.require
Dir.glob('./lib/*.rb') do |model|
  require model
end

module IrishEnglish
  class App < Sinatra::Application

    before do
      @images = Dir["./img/*"]
    end
   
    get '/' do
     erb :index
    end

    get '/home' do
      erb :home
    end

    get '/quiz' do
      @quiz = Quiz.new
      erb :quiz
    end

    post '/results' do
      @results = params["Q1"]
      erb :results
    end

  end

end


#     #helpers
#     helpers do
#       def partial(file_name)
#         erb file_name, :layout => false
#       end

