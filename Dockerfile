FROM python:3.9

RUN mkdir -p /etc/workspace

ADD migrations/ /etc/workspace

COPY prog.py /etc/workspace

WORKDIR /etc/workspace

ARG TEAM_NAME

ARG DB_NAME

ENV TEAM_NAME_VALUE=$TEAM_NAME

ENV DB_NAME_VALUE=$DB_NAME

CMD ["python", "./prog.py"]
