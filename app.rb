require 'bundler'
Bundler.require
Dir.glob('./lib/*.rb') do |model|
  require model
end

module IrishEnglish
  class App < Sinatra::Application
    enable :sessions
    before do
      @images = Dir["./public/img/*"]
    end
   
    get '/' do
     erb :index
    end

    get '/home' do
      erb :home
    end

    get '/quiz' do
      @images = @images.collect! {|image| image[9..-1]}
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

