FROM python:alpine

RUN mkdir -p /srv/localstripe

COPY ./ /srv/localstripe

WORKDIR /srv/localstripe

RUN python setup.py install

EXPOSE 8420

ENTRYPOINT ["localstripe"]
