require 'pry'
require 'rapgenius'
require_relative 'lib/rapper_class'


puts "Welcome to the Hip-Hop Misogyny Calculator. To get started, please enter the name of a rapper to look up:"

rapper_name = gets.strip

song_index = RapGenius.search_by_artist("#{rapper_name}")

if song_index == []
	puts "Sorry, the rapper you searched for was not found. Please enter another rapper to look up:"
	rapper_name = gets.strip
	song_index = RapGenius.search_by_artist("#{rapper_name}")
end

song_ids = song_index.map do |song| 
	song.id 
end

songs = song_ids.map do |song_id|
RapGenius::Song.find(song_id)
end

all_lyrics = songs.map do |song_id|
song_id.document['response']['song']['lyrics']['plain']
end

puts all_lyrics


