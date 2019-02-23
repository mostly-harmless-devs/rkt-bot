#lang racket
(require slack-api)

(define app-token (getenv "APP_TOKEN"))
(define bot-token (getenv "BOT_TOKEN"))
(define channel (getenv "SLACK_CHANNEL"))

(slack-api-test)
(slack-chat-postMessage app-token channel "haha")
(rtm-start bot-token)
