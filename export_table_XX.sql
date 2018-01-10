
SELECT 
id,
user_id              ,
in_reply_to_status_id,
in_reply_to_user_id  ,
favorited            ,
retweeted            ,
retweet_count        ,
lang                 ,
created_at     
INTO OUTFILE '/tmp/EXPORT/tweet_XX.csv'
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
FROM tweet_XX;


SELECT
tweet_id       ,
user_id        ,
REPLACE(REPLACE(text, '\r', ' '), '\n', ' '),
geo_lat        ,
geo_long       ,
REPLACE(REPLACE(place_full_name, '\r', ' '), '\n', ' '),
place_id       
INTO OUTFILE '/tmp/EXPORT/tweet_text_XX.csv'
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
FROM tweet_text_XX;

SELECT
id              ,
screen_name     ,
REPLACE(REPLACE(name, '\r', ' '), '\n', ' '),
verified        ,
protected       ,
followers_count ,
friends_count   ,
statuses_count  ,
favourites_count,
REPLACE(REPLACE(location, '\r', ' '), '\n', ' '),
utc_offset      ,
time_zone       ,
geo_enabled     ,
lang            ,
REPLACE(REPLACE(description, '\r', ' '), '\n', ' '),
url             ,
created_at      
INTO OUTFILE '/tmp/EXPORT/user_XX.csv'
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
FROM user_XX;

SELECT
tweet_id   ,
user_id    ,
hashtag_id 
INTO OUTFILE '/tmp/EXPORT/tweet_hashtag_XX.csv'
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
FROM tweet_hashtag_XX;
