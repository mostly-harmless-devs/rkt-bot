#lang racket
; (require slack-api)
(require "webapi.rkt" threading)

(define app-token (getenv "APP_TOKEN"))
(define bot-token (getenv "BOT_TOKEN"))
(define channel (getenv "SLACK_CHANNEL"))

(slack-api-test)
; (slack-users-setPresence app-token "auto")
(let ([profile (slack-users-profile-get app-token)])
     (~> profile
         (hash-ref 'profile)
         (hash-ref 'status_text)))
; (slack-chat-postMessage app-token "general" "haha :pray:" #:as_user true #:username "babo")
; (slack-users-list app-token)
; (rtm-start bot-token)
