class Quiz < ActiveRecord::Base 

 		attr_accessor :image 

 		IMAGES = Dir["/img/*"]

 		def initialize
 			@image = Dir["../img/*"].sample
 		end

end

#quiz = Quiz.new
#p quiz.image.inspect
#p Dir["../public/img/*"]