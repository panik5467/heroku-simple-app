FROM flashspys/nginx-static

RUN rm -rf /etc/nginx/conf.d/default.conf

COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY site/ /static/site

CMD sed -i -e 's/PPPP/'"$PORT"'/g' /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'
