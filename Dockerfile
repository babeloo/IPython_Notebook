FROM python:2.7
MAINTAINER Valkyrja <valkyjrasama@gmail.com>

RUN mkdir -p /app
WORKDIR /app

ADD requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY docker-entrypoint.sh /usr/local/bin/

EXPOSE 8888
ENTRYPOINT ["docker-entrypoint.sh"]
CMD [""]