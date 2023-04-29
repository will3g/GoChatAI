set-envs:
	set -o allexport
	source .env

build:
	set-envs
	export GO111MODULE=on
	env GOARCH=amd64 GOOS=linux CGO_ENABLED=0 go build -ldflags="-s -w" -o bin/cmd/gochatai cmd/gochatai/main.go

deploy: build
	serverless deploy
