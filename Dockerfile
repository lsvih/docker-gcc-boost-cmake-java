FROM ubuntu:16.04
RUN apt update \
	&& apt install -y --no-install-recommends \
	gcc g++ libboost-all-dev cmake pkg-config \
	openjdk-8-jdk \
	&& ldconfig -v \
	&& apt autoclean && apt clean \
	&& rm -rf /tmp/* /var/tmp/* \
	&& rm -rf /usr/share/doc/* \
	&& rm -rf /var/lib/apt/lists/* \