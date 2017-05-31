import tweepy, random, requests

def main():
    auth = tweepy.OAuthHandler("WgNocII4xvm9yLP4BzFlrXIZG", "13ggLoyn884p6rhRn0JrBlMl6ZHkPUZLlqz51xzQsw99yzZBpe")
    auth.set_access_token("4926159734-3hxbXaaEGRCUivqZid0CgQWQDpTIvHYei5nM9VH", "RWjaGyi6rXCULo2KsyptReDpisGOAZOeHegfBoJx9T0Y4")

    api = tweepy.API(auth)
    value = int(random.random() * 100)
    api.update_status('Testing tweepy API ' + str(value))

    requests.post('http://128.223.4.35:5555/post_data', params={'input':value})
    #public_tweets = api.home_timeline()
    #for tweet in public_tweets:
    #    print(tweet.text)



if __name__ == '__main__':
    main()
