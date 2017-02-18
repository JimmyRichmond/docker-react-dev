FROM node:latest
MAINTAINER dylanrhysscott
RUN npm install -g yarn create-react-app
COPY docker-entrypoint.sh /
RUN chmod +x docker-entrypoint.sh
VOLUME /app
ENV APPNAME=myapp
ENV REDUX=false
EXPOSE 3000
CMD /docker-entrypoint.sh
