FROM golang:1.21-alpine3.18

RUN apk add git bash

RUN go install golang.org/dl/gotip@latest
RUN gotip download