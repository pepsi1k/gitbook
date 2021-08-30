FROM node:10

RUN mkdir -p /var/www/gitbook

WORKDIR /var/www/gitbook

COPY ./knowledge knowledge
COPY ./book.json book.json
COPY ./SUMMARY.md SUMMARY.md
COPY ./README.md README.md

# install gitbook cli
RUN npm install gitbook-cli -g \ 
  && gitbook --version

RUN gitbook install

CMD ["/usr/local/bin/gitbook", "serve"]

EXPOSE 4000