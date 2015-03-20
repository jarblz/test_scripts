class String 
	def count_chars
		#reverse
		letter_count = Hash.new
		#remove white spaces, ignore case, split chars into a list, and loop 
		self.gsub(/\s+/, "").downcase.split(//).map do |char|
			 if letter_count[char].nil?
			 	letter_count[char]=1
			 else
			 	letter_count[char]+=1
			 end
		end
		return letter_count
	end
end

puts "enter a string of which you'd like individual chars counted"
response = STDIN.gets.chomp
puts "Character count:"
response.count_chars().each do |char,count|
	puts "Character #{char}: #{count}"
end