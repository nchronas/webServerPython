FROM resin/rpi-raspbian:latest
RUN apt-get update -y && apt-get install -y \
python python-pip python-dev python-dbus python-flask \
&& apt-get clean && rm -rf /var/lib/apt/lists/*
COPY . /app
CMD ["python", "/app/server.py"]
