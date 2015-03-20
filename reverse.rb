class String 
	def reverse_string
		#return self.reverse
		len = self.length-1
		@result=[]
		@letter_count = Hash.new
		self.split(//).map do ||
			 @result << self[len]
			 len -= 1
		end
		return @result.join
	end
end

puts "enter a thing to reverse"
response = STDIN.gets.chomp
puts "reverse string: #{response.reverse_string()}"



