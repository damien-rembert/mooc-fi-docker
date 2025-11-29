FROM golang:1.16

WORKDIR /usr/src/app

COPY . .

ENV REQUEST_ORIGIN=http://localhost:5000

EXPOSE 8080
ENV PORT=8080

RUN go build
CMD ["./server"]