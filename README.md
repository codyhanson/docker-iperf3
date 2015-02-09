#Dockerized iperf3 server

To run as server with default ports:
```bash
$ docker run --rm -p 5201:5201 -p 5201:5201/udp  codyhanson/iperf3
```

To run as a client:
```bash
$ docker run --rm codyhanson/iperf3 -c <iperf3 server ip> [other iperf options]
```

To Build:
```bash
$ git clone git@github.com:codyhanson/docker-iperf3
$ cd docker-iperf3
$ docker build -t yourDockerUsername/docker-iperf3 .
```

Tested with Docker 1.4.1

