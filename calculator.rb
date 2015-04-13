require 'pry'
require 'rapgenius'
require_relative 'lib/rapper_class'
require_relative 'lib/lookup_rapper'

puts "\n" 
puts "Welcome to the Hip-Hop Misogyny Calculator. To get started, please enter the name of a rapper you would like to look up:"

rapper_name = gets.strip

lookup_rapper(rapper_name)



