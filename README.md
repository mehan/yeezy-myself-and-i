#Based Poetry 2.0#

Based Poetry 2.0 is a new version of [Based Poetry](https://github.com/mehan/based-poetry), rewritten in Ruby to take advantage of Tim Rogers' [RapGenius gem](https://github.com/timrogers/rapgenius). 

Based Poetry is a simple Ruby script that creates poems from hip-hop lyrics and posts them to a Tumblr blog. To see it in action [visit the Based Poetry Tumblr blog](http://based-poetry.tumblr.com/). In this case, it searches for songs by Lil B, ingests 20 pages worth of results, selects any lines that contain the keyword "based," constructs a poem by selecting five of those lines at random and then posts them to the based-poetry Tumblr blog. By altering the 'Rapgenius.search_by_artist(ARTIST)' and 'if line.include? KEYWORD' lines, you could create a script that constructs poems from any hip-hop artist based on any keyword and posts them to Tumblr.  

To post to a Tumblr account, you'll need to [register your app to use the Tumblr API](http://www.tumblr.com/docs/en/api/v2). You'll then need to go through the OAuth flow to grant your app credentials to post to your Tumblr blog. I used [this three-legged Python OAuth example](https://github.com/simplegeo/python-oauth2#twitter-three-legged-oauth-example) (just replace all the Twitter stuff with Tumblr stuff).

If you want to automate the app, you'll need to use something like a cron job. I simply deployed the app to Heroku and used [the Heroku scheduler](https://addons.heroku.com/scheduler) in order to schedule it to run daily.

Shoutout to [the cat force](https://www.facebook.com/CatForceProtectLilBAndKekeAtAllCost), protect Lil B at all cost. 




