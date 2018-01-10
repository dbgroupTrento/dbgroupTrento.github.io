
SELECT
id,
hashtag,
partitioning_value
INTO OUTFILE '/tmp/EXPORT/hashtag_2014_07_25.csv'
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
FROM hashtag_2014_07_25;


SELECT
tweet_id,
user_id,
progressive,
url
INTO OUTFILE '/tmp/EXPORT/tweet_url_02.csv'
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
FROM tweet_url_02;
