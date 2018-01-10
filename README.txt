# Twitter Dataset
## Downloaded from the Streaming API

## Dates:  From 2012-12-18 to 2014-07-25
## Content: More than 500M tweets

** The dataset is updated quarterly **

Tweets have been filtered to be in the English or Italian language through twitter API, thus it easily contains non english/italian tweets also.


The dataset is divided into chunks. 
Content of each chunk - number of tweets and time window limit,  is listed in the file `content_index.tsv`
Note that there is a special chunck of _outliers_ i.e. Tweets with _odd_ time/date, they are likely to be retweets of old tweets.

Each chunk contains:
 - Tweets : only the main metadata about the tweet (e.g. User ID, Tweet ID, date, language, retweets, replies ...) 
 - Tweets text: the text of the tweet and the location metadata
 - Users : basic profile information about the user who posted a tweet
 - Tweet Url : extrapolated information about URLs appearing in a tweet
 - Tweet Hashtag : extrapolated information about hashtags appearing in a tweet ( refers to Hashtag ID )
 - Hashtags : list of all hashtags appearing in the dataset (contains assigned hashtag ID)


** Tweets are identified by both `user_id` and `tweet_id`

Tables `tweet_url` and `hashtag` are shared among more chunks.

SQL files contains the schema of the MySQL database and scripts to export the data from the table.

The dataset has been downloaded using the Tweet-Importer python libray by Matteo Lissandrini
[https://github.com/kuzeko/Twitter-Importer](Tweet-Importer) 
