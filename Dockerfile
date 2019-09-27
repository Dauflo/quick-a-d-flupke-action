FROM alpine:latest

LABEL "com.github.actions.name" = "Quick&Flupke"
LABEL "com.github.actions.description" = "Post picture on CI fail"
LABEL "com.github.actions.icon" = "alert-triangle"
LABEL "com.github.actions.color" = "red"

LABEL "repository" = "https://github.com/Dauflo/quick-and-flupke-action"
LABEL "homepage" = "https://github.com/Dauflo/quick-and-flupke-action"

RUN apk add --no-cache \
        bash \
        curl

COPY add-comment.sh /usr/local/bin/add-comment

CMD ["add-comment"]