# HAP-Docker

Dockerize HAP-NodeJS for Raspberry Pi 3.

## Usage

```bash
docker run -d --net=host <image id>
```

With debug on:

```bash
docker run -e DEBUG=* -d --net=host <image id>
```