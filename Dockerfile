# Build stage
FROM golang:1.17.2-alpine AS build
WORKDIR /app
COPY . .
RUN go mod download
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o my-go-app .

# Production stage
FROM alpine:3.15.2
RUN apk --no-cache add ca-certificates
WORKDIR /root/
COPY --from=build /app/my-go-app .
CMD ["./my-go-app"]