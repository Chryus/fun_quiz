class Quiz < ActiveRecord::Base 

 		attr_accessor :image 

 		IMAGES = Dir["../img/*"]

 		def initialize
 			# @image = Dir["../public/img/*"].sample
 		end

 		# def message 
 		# 	return "Your move is #{player_move}. The computer chose #{computer}."
 		# end 

 		# def score 
	 	# 	case player_move
	 	# 		when computer
	 	# 			return "Draw"
	 	# 		when "rock"
	 	# 			return "You win!" if computer == "scissors"
	 	# 			return "You lose!" if computer == "paper"
	 	# 		when "scissors"
			# 		return "You win!" if computer == "paper"
	 	# 			return "You lose!" if computer == "rock"
	 	# 		when "paper"
			# 		return "You win!" if computer == "rock"
	 	# 			return "You lose!" if computer == "scissors"
	 	# 	end
 	# 	# end 

 	# end 

end

# quiz = Quiz.new
# p quiz.image.inspect
# p Dir["../public/img/*"]