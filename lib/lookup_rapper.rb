def lookup_rapper(rapper)

song_index = RapGenius.search_by_artist("#{rapper}")

if song_index == []
	puts "Sorry, the rapper you searched for was not found."

else

	song_ids = song_index.map do |song| 
		song.id 
	end

	songs = song_ids.map do |song_id|
	RapGenius::Song.find(song_id)
	end

	all_lyrics = songs.map do |song_id|
	song_id.document['response']['song']['lyrics']['plain']
	end

	lyrics_string = all_lyrics.join(",")

	lyrics_array = lyrics_string.split(/\W+/)

	pussy_count = 0
	bitch_count = 0
	ho_count = 0

	lyrics_array.each do |lyric|
		if lyric.include? "pussy"
			pussy_count += 1
		elsif lyric.include? "bitch"
			bitch_count += 1
		elsif lyric == "ho" || lyric == "hoes"
			ho_count += 1
		end
		end

	rapper = Rapper.new(rapper, pussy_count, bitch_count, ho_count)
	
	puts "\n" 
	puts "Here are the misogyny stats for #{rapper.name}:"
	puts "\n" 
	puts "Out of the #{song_ids.length} songs analyzed, #{rapper.name} uses the word 'bitch' #{rapper.bitch_score} times, 'pussy' #{rapper.pussy_score} times and 'ho' #{rapper.ho_score} times."
	puts "\n" 
	puts "Overall, we found #{rapper.bitch_score + rapper.pussy_score + rapper.ho_score} misogynistic lyrics in #{song_ids.length} #{rapper.name} songs."
	puts "\n" 

end
end


