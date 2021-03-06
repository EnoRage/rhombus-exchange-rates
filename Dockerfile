FROM golang:latest
RUN mkdir /app
ADD . /app/
WORKDIR /app

RUN go get github.com/gin-gonic/gin
RUN go get github.com/ethereum/go-ethereum
RUN go get github.com/alecthomas/template
RUN go get github.com/gin-gonic/contrib/cors
RUN go get github.com/swaggo/gin-swagger
RUN go get github.com/EnoRage/rhombus-exchange-rates
RUN go get github.com/swaggo/gin-swagger/swaggerFiles
RUN go get github.com/ethereum/go-ethereum/accounts/abi
RUN go get github.com/ethereum/go-ethereum/accounts/abi/bind
RUN go get github.com/ethereum/go-ethereum/common
RUN go get github.com/ethereum/go-ethereum/core/types
RUN go get github.com/ethereum/go-ethereum/event
RUN go get github.com/ethereum/go-ethereum/ethclient
RUN go get github.com/ethereum/go-ethereum/crypto
RUN go build -o main .

EXPOSE 8080

CMD ["/app/main"]