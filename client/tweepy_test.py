import tweepy
import random

auth = tweepy.OAuthHandler("WgNocII4xvm9yLP4BzFlrXIZG", "13ggLoyn884p6rhRn0JrBlMl6ZHkPUZLlqz51xzQsw99yzZBpe")
auth.set_access_token("4926159734-3hxbXaaEGRCUivqZid0CgQWQDpTIvHYei5nM9VH", "RWjaGyi6rXCULo2KsyptReDpisGOAZOeHegfBoJx9T0Y4")

api = tweepy.API(auth)
api.update_status('Testing tweepy API' + str(random.random() * 10))

public_tweets = api.home_timeline()
#for tweet in public_tweets:
#    print(tweet.text)
