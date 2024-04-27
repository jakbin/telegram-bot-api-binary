# telegram-bot-api-binary

[![All Downloads](https://img.shields.io/github/downloads/jakbin/telegram-bot-api-binary/total.svg)](https://github.com/jakbin/telegram-bot-api-binary)

telegram-bot-api binary

## Run using docker 

```sh
docker pull ghcr.io/jakbin/telegram-bot-api-binary:main
```
```sh
docker -d -p 8081:8081 -e API_ID=<your_api_id> -e API_HASH=<your_api_hash> ghcr.io/jakbin/telegram-bot-api-binary:main
```

## Run direct from terminal 

```sh
curl https://github.com/jakbin/telegram-bot-api-binary/raw/main/run.sh  | bash -s your_api_id your_api_hash
```
