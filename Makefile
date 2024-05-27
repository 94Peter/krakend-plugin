NAME=static-filesystem
deploy:
	docker run -it -v "$$PWD:/app" -w /app \
		krakend/builder:2.1.4 \
		go build -buildmode=plugin -o ${NAME}.so .