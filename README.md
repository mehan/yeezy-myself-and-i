#Yeezy, Myself and I#

Yeezy, Myself and I is a poetry bot that generates poems from Kanye West lyrics. To see it in action, [visit the Yeezy, Myself and I](http://yeezy-myself-and-i.tumblr.com/) Tumblr blog. It's written in Ruby, is based on the [Based Poetry codebase](https://github.com/mehan/based-poetry-2.0) and relies on Tim Rogers' [RapGenius gem](https://github.com/timrogers/rapgenius). It differs from the Based Poetry script in a few minor ways:

* Since Kanye is not just a rapper but also a producer (and also often appears as a guest on other artists' tracks), the script performs a check on each song to ensure that Kanye West is the primary artist.

* Instead of searching for one keyword, it searches for a number of terms (contained in the 'words' array) and ingests the line if it contains any of those words.

* It tests to see if a line contains a square bracket, colon or quotation marks, to avoid metalines like "[Produced by Kanye West]" and "[Verse 1: Kanye West]".

* If you need to generate Oauth credentials for your app to post to Tumblr, you will find [this Gist](https://gist.github.com/monde/4577106/) very helpful.

For additional documentation, see the [Based Poetry 2.0 repo](https://github.com/mehan/based-poetry-2.0).




