# Stage 1: Build the Go binary
FROM golang:1.20 AS builder

# Set the working directory inside the container
WORKDIR /app

# Copy go.mod and go.sum to download dependencies
COPY go.mod go.sum ./

# Download dependencies
RUN go mod download

# Copy the rest of the application code
COPY . .

# Build the Go binary
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix nocgo -o myapp .

# Stage 2: Create a minimal runtime image
FROM alpine:latest

# Set the working directory inide the container
WORKDIR /app

# Copy only the necessary files from the previous stage
COPY --from=builder /app/myapp .

# Expose the port that the application will run on
EXPOSE 8080

# Command to run the executable
CMD ["./myapp"]
