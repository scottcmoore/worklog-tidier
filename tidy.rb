# frozen_string_literal: true
require 'thor'

# Class to clean up the worklog
class Tidy < Thor
	
	class_option :file, :type => :string, :required => true


  desc "count", "print unfinished task count"
	def count
    puts 3
  end



  #def print_if_unfinished(line)
   #  puts line if unfinished? line
  #end

  #def initialize
  #  file = File.open('worklog_copy.md')
  #  file.readlines.each { |line| print_if_unfinished(line) }
  #  file.close
  #end

  private

  def unfinished?(line)
    line.include?('[ ]') || line.include?('[-]')
  end
end


Tidy.start(ARGV)
