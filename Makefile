# NAME=static-filesystem
deploy:
	docker run -it -v "$$PWD:/app" -w /app \
		krakend/builder:2.7.2 \
		go build -buildmode=plugin -o ${NAME}.so ./${NAME}/main.go