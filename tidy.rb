class Tidy

  def print_if_unfinished(line)
		if line.include?("[ ]") || line.include?("[-]")
			puts line
		end
	end

	def initialize
		puts "initializing"
		file = File.open("worklog_copy.md")
		file_data = file.readlines.each { |line| self.print_if_unfinished(line) }
		file.close
	end

end

Tidy.new
