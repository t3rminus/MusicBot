FROM openjdk:slim

RUN mkdir -p /jmb/config
ADD ./target/JMusicBot-Snapshot-All.jar /jmb/JMusicBot.jar
ADD ./example.config.txt /jmb/config/config.txt

COPY ./docker-entrypoint.sh /jmb

RUN chmod +x /jmb/docker-entrypoint.sh

VOLUME /jmb/config

ENTRYPOINT ["/jmb/docker-entrypoint.sh"]