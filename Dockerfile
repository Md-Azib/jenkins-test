FROM python:3.9

RUN mkdir -p /etc/workspace

ADD migrations/ /etc/workspace

COPY prog.py /etc/workspace

WORKDIR /etc/workspace

ARG JENKINS_PARAM

RUN echo JENKINS_PARAM

CMD ["python", "./prog.py"]
