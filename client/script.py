import tweepy, sys, random, requests

def main():
    tweepyTesting(str(sys.argv[1]), str(sys.argv[2]), str(sys.argv[3]), str(sys.argv[4]))

def tweepyTesting(con_key, con_sec, acc_tok, acc_sec):
    auth = tweepy.OAuthHandler(con_key, con_sec)
    auth.set_access_token(acc_tok, acc_sec)
    api = tweepy.API(auth)
    value = int(random.random() * 100)
    api.update_status('Testing ' + str(value))
    requests.post('http://128.223.4.39:5555/post_data', params={'input':value})
    print(API.trends(1))
    print(API.retweets_of_me())
    print(API.followers())

if __name__ == '__main__':
    main()
