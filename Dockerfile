FROM ruby:3.0.0-alpine3.13 as ruby-latest
RUN apk update && apk add curl && \
    addgroup -S abhinab && adduser -S abhinab -G abhinab && \
    chown -R abhinab "/root/"
#switching user
USER abhinab
COPY "./http_server.rb" "/root/project/webserver.rb"
WORKDIR /root/project
#exposing port 80
EXPOSE 80
CMD [ "ruby","webserver.rb" ] 
