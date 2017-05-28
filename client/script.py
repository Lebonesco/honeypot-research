import tweepy
import sys
import random

def main():
    #arg1 = str(sys.argv[1])
    #open(arg1 + ".txt", 'w')
    tweepy_testing(str(sys.argv[1], str(sys.argv[2]), str(sys.argv[3]), str(sys.argv[4]))

def tweepy_testing(con_key, con_sec, acc_tok, acc_sec):
    auth = tweepy.OAuthHandler(con_key, con_sec)
    auth.set_access_token(acc_tok, acc_sec)
    api = tweepy.API(auth)
    api.update_status('Testing ' + str(random.random() * 10))

if __name__ == '__main__':
    main()
