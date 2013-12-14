class Quiz < ActiveRecord::Base 

 		attr_accessor :image 

 		IMAGES = Dir["./public/img/*"].sample[9..-1]

 		def initialize
 		end

end

#quiz = Quiz.new
#p quiz.image.inspect
#p Dir["../public/img/*"]