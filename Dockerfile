FROM    golang:alpine3.14 AS builder
RUN     mkdir $GOPATH/src/golang
WORKDIR $GOPATH/src/golang
copy    . .
RUN     go mod init
RUN     go mod tidy
RUN     go build -o server .
CMD     [ "./server"]