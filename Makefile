PROJECT_DIR = $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
GOPATH = $(PROJECT_DIR)/.vendor
GOBIN = $(PROJECT_DIR)

# Add third-party dependency URLs & uncomment to get started
# EXT_DEPS = github.com/user_name/project_name \
# 	github.com/user_name/project_name

env:
	go env

get:
	go get -u -v $(EXT_DEPS)

test:
	go test

build:
	go build
