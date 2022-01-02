FROM python:3.9

RUN mkdir -p /etc/workspace/migrations

ADD migrations/ /etc/workspace/migrations

RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
  && tar xzvf docker-17.04.0-ce.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker-17.04.0-ce.tgz

COPY prog.py /etc/workspace

WORKDIR /etc/workspace

ARG TEAM_NAME

ARG DB_NAME

ENV TEAM_NAME_VALUE=$TEAM_NAME

ENV DB_NAME_VALUE=$DB_NAME

CMD ["python", "./prog.py"]
