FROM ubuntu:14.04
MAINTAINER Cody Hanson <chanson@uwalumni.com>
RUN apt-get update && apt-get install -y git build-essential
RUN git clone https://github.com/esnet/iperf.git
WORKDIR /iperf
RUN ./configure && make && make install
ENV LD_LIBRARY_PATH /usr/local/lib/
EXPOSE 5201
CMD ["-s"]
ENTRYPOINT ["iperf3"]
