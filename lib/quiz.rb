class Quiz < ActiveRecord::Base 

 		attr_accessor :image_pair

 		IMAGES = Dir["./public/img/*"].sample[9..-1]

 		def initialize

 		end

end

#quiz = Quiz.new
#p quiz.image.inspect
#p Dir["../public/img/*"]


# <% session[:id] = @images[1] %>
# <% elsif session[:id] == @images[1] %>
# <img class="quiz1" src= "<%= @images[2] %>">
# <img class="quiz1" src= "<%= @images[3] %>">
# <% session[:id] = @images[3] %>
# <% elsif session[:id] == @images[3] 
# <img class="quiz1" src= "<%= @images[4] %>">
# <img class="quiz1" src= "<%= @images[5] %>">
# <% session[:id] = @images[5] %>