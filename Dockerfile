FROM python:3

COPY ./start.sh /
RUN chmod +x /start.sh

RUN /bin/sh -c "pip install redis-py-cluster"

RUN /bin/sh -c "pip install redis-cli-cluster"

ENTRYPOINT [ "/bin/sh", "./start.sh" ]