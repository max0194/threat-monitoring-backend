.PHONY: lint fmt precommit-install

lint:
	cd ./ && golangci-lint run ./...

fmt:
	gofmt -s -w ./
	goimports -w . || true

precommit-install:
	pre-commit install
