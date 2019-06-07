test:
	go test -count=1 -cover -race ./...
	@for i in examples/*/main.go; do \
		echo go run -race $$i; \
		go run -race $$i; \
	done
