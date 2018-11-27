FROM python:2.7

WORKDIR /app

RUN pip install \
        requests==2.20.0 \
        baker==1.3 \
        websocket-client==0.44.0

COPY services.py /app/gaucho
RUN chmod +x /app/gaucho

ENTRYPOINT ["/app/gaucho"]
