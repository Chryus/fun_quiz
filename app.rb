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
      #@names = @images.collect! {|image| image[6..-5].capitalize} 
      #@pairs = @images.each_slice(2).to_a
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


# <% if session[:id].nil? %>
#   <img class="quiz1" src= "<%= @images[0] %>">
#   <img class="quiz1" src= "<%= @images[1] %>">  
# <% else%>
# <% session[:id] = 1 %>
#   <% while session[:id] < 13 %>
#   <img class="quiz1" src= "<%= @images[session[:id]] %>">
#   <img class="quiz1" src= "<%= @images[session[:id] + 1] %>">
#   <% session[:id]+= 1 %>
#   <% end %>
# <% end %>


#     #helpers
#     helpers do
#       def partial(file_name)
#         erb file_name, :layout => false
#       end

