FROM alpine:3.3

RUN apk add -U \
	py-pip \
	py-twisted \
	python \
 && pip install --no-cache-dir \
	simplepypi \
 && apk del --purge \
	py-pip \
 && rm -rf /var/cache/apk/*

EXPOSE 8000/tcp
VOLUME ["/usr/bin/packages"]

ENTRYPOINT ["/usr/bin/simplepypi"]
