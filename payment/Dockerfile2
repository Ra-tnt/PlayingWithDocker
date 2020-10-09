FROM golang:1.7

RUN git clone https://github.com/microservices-demo/payment.git $GOPATH/src/payment

RUN mkdir /app
COPY . $GOPATH/src/payment/

RUN go get -u github.com/FiloSottile/gvt
RUN cd $GOPATH/src/payment/ && gvt restore

RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o /app/main go/src/payment/cmd/paymentsvc

CMD ["/app/main", "-port=80"]

#EXPOSE 80
