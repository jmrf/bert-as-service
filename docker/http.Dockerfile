FROM tensorflow/tensorflow:1.12.0-py3
RUN pip install bert-serving-server[http]
COPY ./ /app
COPY ./docker/http_entrypoint.sh /app
WORKDIR /app
ENTRYPOINT ["/app/http_entrypoint.sh"]
CMD []

