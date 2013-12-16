class Quiz < ActiveRecord::Base 

 		attr_accessor :image_pair

 		IMAGES = Dir["./public/img/*"].sample[9..-1]

 		def initialize

 		end

end
