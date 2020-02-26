set -x
mkdir -p _/

CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o _/hello-gopher_linux .
CGO_ENABLED=0 GOOS=darwin GOARCH=amd64 go build -o _/hello-gopher_darwin .
CGO_ENABLED=0 GOOS=windows GOARCH=amd64 go build -o _/hello-gopher_windows.exe .
