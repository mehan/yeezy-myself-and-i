require 'rapgenius'
require 'net/http' 
require 'tumblr_client'

Tumblr.configure do |config|
  config.consumer_key = ENV["consumer_key"]
  config.consumer_secret = ENV["consumer_secret"]
  config.oauth_token = ENV["access_token"]
  config.oauth_token_secret = ENV["access_token_secret"]
end

http = Net::HTTP.new(@host, @port)
http.read_timeout = 2000


song_index = RapGenius.search_by_artist("Lil B")

basedgod = song_index[1].artist

song_ids = []
songs = []
all_lyrics = []
lyrics_by_line = []
based_lyrics = []
randomly_based = []
poem  = ""

1.upto(10) do |num|
songs = basedgod.songs(page: num)
songs.each do |song|
song_ids << song.id 
end
end

song_ids.each do |id|
songs << RapGenius::Song.find(id)
end

all_lyrics = songs.map do |song_id|
song_id.document['response']['song']['lyrics']['plain']
end

all_lyrics.each do |song|
lyrics_by_line << song.split("\n")
end

lyrics_by_line = lyrics_by_line.flatten

lyrics_by_line.each do |line|
if line.include? "based"
based_lyrics << line
end
end

randomly_based = based_lyrics.shuffle

poem = randomly_based[1]+'<br>'+randomly_based[2]+'<br>'+randomly_based[3]+'<br>'+randomly_based[4]+'<br>'+randomly_based[5]

client = Tumblr::Client.new

client.text("based-poetry.tumblr.com", {:body => poem}) 
