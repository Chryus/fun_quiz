require 'bundler'
Bundler.require
Dir.glob('./lib/*.rb') do |model|
  require model
end

module IrishEnglish
  class App < Sinatra::Application
    enable :sessions
    before do
      @files = Dir["./public/img/*"]
      @images = @files.collect! {|image| image[9..-1]}
    end
   
    get '/' do
     erb :index
    end

    get '/home' do
      erb :home
    end

    get '/quiz' do
      session['id'] ||= 0
        if session['id'] < 11
          session['id'] += 2 
        else
          session['id'] = 2
        end
        erb :quiz
    end 

    post '/results' do
      @results = params["Q1"]
      erb :results
    end

  end
end



