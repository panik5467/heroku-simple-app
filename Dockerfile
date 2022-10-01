FROM flashspys/nginx-static

RUN rm -rf /etc/nginx/conf.d/default.conf

COPY nginx.conf /etc/nginx/conf.d/default.conf.temp

COPY site/ /static

#CMD /bin/bash -c "envsubst '\$PORT' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf" && nginx -g 'daemon off;'
CMD sed 's/\$PORT/`echo $PORT`/g' < /etc/nginx/conf.d/default.conf.temp > /etc/nginx/conf.d/default.conf

CMD nginx -g 'daemon off;'
