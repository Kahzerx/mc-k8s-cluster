FROM nginx
EXPOSE 80 443
RUN mkdir /maps && touch /maps/test.txt
COPY ./conf/nginx.conf /etc/nginx/conf.d/default.conf
