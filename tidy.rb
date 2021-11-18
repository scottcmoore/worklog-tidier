# frozen_string_literal: true

# Class to clean up the worklog
class Tidy
  def print_if_unfinished(line)
    puts line if line.include?('[ ]') || line.include?('[-]')
  end

  def initialize
    puts 'initializing'
    file = File.open('worklog_copy.md')
    file.readlines.each { |line| print_if_unfinished(line) }
    file.close
  end
end

Tidy.new
