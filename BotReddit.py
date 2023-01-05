import praw
from RedditModule import delete_specific_post
from cryptography.fernet import Fernet

def main():
    with open('key.txt', 'rb') as f:
        key=f.read()
    f.close()
    fernet=Fernet(key)
    with open('credentials.txt', 'rb') as f:
        CLIENT_ID_REDDIT=fernet.decrypt(f.readline()).decode()
        API_KEY=fernet.decrypt(f.readline()).decode()
        pw=fernet.decrypt(f.readline()).decode()
    f.close()
    FLAIR = '4f77c9a4-ef7a-11eb-8ee5-aefe156a2d70'
    SUBREDDIT = 'SabakuNoMaiku'
    HOURS_THRESHOLD = 6.0
    MIN_COM = 5
    un = 'CostruttoViola'
    ua = 'script:RedditNoBot:v1.2.5 (by /u/CostruttoViola)'

    reddit = praw.Reddit(
        client_id=CLIENT_ID_REDDIT,
        client_secret=API_KEY,
        username=un,
        password=pw,
        user_agent=ua
    )
    delete_specific_post(reddit,SUBREDDIT,FLAIR,HOURS_THRESHOLD,MIN_COM)


if __name__ == '__main__':
    main()
