FROM httpd:alpine
WORKDIR /usr/src
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.2.2/dumb-init_1.2.2_amd64
RUN chmod +x /usr/local/bin/dumb-init
ADD run.sh run.sh
RUN chmod +x run.sh

CMD ["/usr/local/bin/dumb-init", "--rewrite", "15:28", "--", "./run.sh"]

