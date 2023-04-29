FROM golang:1.20

WORKDIR /go/go-chat-ai

# To run your container withput crash for tests
CMD [ "tail", "-f", "/dev/null" ]