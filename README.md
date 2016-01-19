# Welcome to docker-simplepypi

This is a Docker image for [simplepypi][].

To run it:

```
$ docker run --rm -it \
    -v /tmp/packages:/usr/bin/packages \
    -p 8000:8000 \
    msteinert/simplepypi
```

Then navigate to http://localhost:8000.

[simplepypi]: https://github.com/steiza/simplepypi
