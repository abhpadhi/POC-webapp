FROM ruby:3.0.0-alpine3.13 as ruby-latest
RUN apk update && apk add curl sudo
WORKDIR /root/project
COPY "project/http_server.rb" "/root/project/webserver.rb"
#adding nonroot user
RUN addgroup -S abhinab && adduser -S abhinab -G abhinab
#changing ownership for non-root user handling
RUN chown -R abhinab "/root/"
#switching user
USER abhinab
#exposing port 80
EXPOSE 80
CMD [ "ruby","webserver.rb" ] 