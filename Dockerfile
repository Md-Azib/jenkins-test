FROM python:3.9

RUN mkdir -p /etc/workspace

ADD migrations/ /etc/workspace

COPY prog.py /etc/workspace

WORKDIR /etc/workspace

ENV param1 ${jenkinsParam}

RUN echo ${param1}

CMD ["python", "./prog.py"]
