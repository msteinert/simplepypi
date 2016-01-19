FROM alpine:3.2

RUN apk add -U \
	gcc \
	musl-dev \
	py-pip \
	python-dev \
 && pip install --no-cache-dir \
	simplepypi \
 && apk del \
	gcc \
	musl-dev \
	py-pip \
	python-dev \
 && apk add -U \
	python \
 && rm -rf /var/cache/apk/*

EXPOSE 8000/tcp
VOLUME ["/usr/bin/packages"]

ENTRYPOINT ["/usr/bin/simplepypi"]
