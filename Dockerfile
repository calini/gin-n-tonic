## Build stage ##
FROM golang:1.13-alpine AS builder
RUN apk --no-cache add git

WORKDIR /out

# get dependencies
COPY go.mod go.sum /out/
RUN go mod download

# copy project
COPY . .

# test project
RUN CGO_ENABLED=0 GOOS=linux go test -v ./...

# build project
RUN CGO_ENABLED=0 GOOS=linux go build -o app

## Run stage ##
FROM scratch

COPY --from=builder /out/app .
EXPOSE 8080
CMD ["./app"]