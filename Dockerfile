FROM ruby:alpine

RUN gem install apache-loggen

COPY ltsv.rb /ltsv.rb
COPY app.rb /app.rb
COPY run.sh /run.sh

RUN chmod +x /run.sh
CMD ["/run.sh"]
