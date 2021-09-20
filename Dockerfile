FROM python:3.9-alpine
FROM liquibase/liquibase:4.4.2

ENV TEST_LIQUIBASE_URL=localhost \
TEST_LIQUIBASE_PORT=3306 \
TEST_LIQUIBASE_DATABASE=test_liquibase \
TEST_LIQUIBASE_USER=root \
TEST_LIQUIBASE_PASS=root

USER root
RUN mkdir -p /home/app
RUN chown newuser /home/app
USER newuser

COPY prog.py /home/app

CMD ["python", "/home/app/prog.py"]
