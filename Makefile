all:
	go build

install:
	go install

bash:
	go build
	./dexter bash
	sudo mv dexter.sh /etc/bash_completion.d/ || printf "Failed to move dexter.sh to bash_completion.d directory. Sudo likely not installed. Build Successful."

test:
	go test -race -cover ./...
