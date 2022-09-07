FROM golang:1.14.1 
RUN git clone -b main https://github.com/150110059/goservice.git /code
WORKDIR /code/
RUN go build -o /server server.go
EXPOSE 8080
ENTRYPOINT /server