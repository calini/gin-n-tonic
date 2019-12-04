GO      = go
OUT     = /out
GO111MODULE ?= on

run:
	$(GO) run .

build:
	$(GO) build .

test:
	$(GO) test -count=1 ./...

test-coverage:
	$(GO) test -count=1 -coverprofile $(OUT)/tests/cover.out . >> $(OUT)/tests/test.json
