## Build stage ##
FROM golang:1.12-alpine AS builder
RUN apk --no-cache add git

WORKDIR /out

# get dependencies
COPY go.mod go.sum /out/
RUN go mod download

# build project
COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build -o app

## Run stage ##
FROM alpine:latest

COPY --from=builder /out/app .
EXPOSE 8080
CMD ["./app"]