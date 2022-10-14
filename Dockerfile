FROM golang:1.19-bullseye

WORKDIR /batch
COPY go.mod /batch/
RUN go mod tidy

COPY . /batch/
RUN go build main.go
