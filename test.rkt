#lang racket
; (require slack-api)
(require "webapi.rkt" threading json)

(define app-token (getenv "APP_TOKEN"))
(define bot-token (getenv "BOT_TOKEN"))
(define channel (getenv "SLACK_CHANNEL"))

(slack-api-test)
; (slack-users-setPresence app-token "auto")
(let ([res (slack-users-profile-get app-token)])
     (~> res
         (hash-ref 'profile)
         (hash-ref 'status_text)))

(slack-users-profile-set app-token #:profile (jsexpr->string #hasheq((status_text . "huh?"))))
