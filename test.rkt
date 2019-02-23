#lang racket
(require slack-api)

(define app-token "")
(define bot-token "")

(slack-api-test)
(slack-chat-postMessage app-token "general" "haha")
(rtm-start bot-token)
