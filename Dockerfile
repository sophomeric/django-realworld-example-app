# Dockerfile References: https://docs.docker.com/engine/reference/builder/
FROM python:3.5.2

# Set PYTHONUNBUFFERED so output is displayed in the Docker log
ENV PYTHONUNBUFFERED=1

COPY . /data/django-app
WORKDIR /data/django-app

RUN pip install -r ./requirements.txt
RUN mkdir -p /data/django-db

EXPOSE 4000

# Run the executable
CMD ["./run.sh"]
