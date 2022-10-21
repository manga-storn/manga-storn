FROM alpine:3.14
LABEL Name=docker-fakes3 Version=0.0.1

WORKDIR /fakes3_data

RUN apk add --no-cache ruby ruby-io-console ruby-webrick ruby-etc
RUN gem install fakes3 --no-doc

RUN mkdir -p /fakes3_data && chown nobody:nobody /fakes3_data && chmod 0750 /fakes3_data
USER nobody
VOLUME /fakes3_data

EXPOSE 4567
CMD ["fakes3", "-r", "/fakes3_data", "-p", "4567", "--license", "123"]
