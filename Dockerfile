FROM golang:latest

ARG USERNAME
ARG PASSWORD

RUN echo "machine github.com login $USERNAME password $PASSWORD" > ~/.netrc

WORKDIR /app

ENV GOPRIVATE=github.com/brianmmdev-that-actions/private-go-package
COPY go.mod go.mod
COPY *.go ./

RUN go get
RUN go build -o build/action-bin .

RUN cp build/action-bin /usr/bin/action-bin

ENTRYPOINT ["/usr/bin/action-bin"]