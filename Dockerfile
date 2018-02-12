FROM docker.elastic.co/logstash/logstash:6.0.1

RUN logstash-plugin remove x-pack
RUN logstash-plugin install logstash-input-azureblob
RUN sed -i '/xpack/d' /usr/share/logstash/config/logstash.yml

COPY logstash.conf /etc/logstash/

CMD ["-f", "/etc/logstash/logstash.conf"]