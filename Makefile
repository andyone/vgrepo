########################################################################################

# This Makefile generated by GoMakeGen 0.5.0 using next command:
# gomakegen .

########################################################################################

.PHONY = fmt all clean deps

########################################################################################

all: vgrepo

vgrepo:
	go build vgrepo.go

deps:
	git config --global http.https://pkg.re.followRedirects true
	go get -d -v pkg.re/essentialkaos/ek.v9

fmt:
	find . -name "*.go" -exec gofmt -s -w {} \;

clean:
	rm -f vgrepo

########################################################################################
