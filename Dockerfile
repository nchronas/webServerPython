FROM resin/rpi-raspbian:jessie
RUN apt-get update \
	&& apt-get install -y \
	python \
	python-dev \
	python-dbus \
	python-flask \
	&& rm -rf /var/lib/apt/lists/*
COPY server.py /usr/src/app/
CMD ["python", "/usr/src/app/server.py"]
