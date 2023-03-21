FROM openjdk:slim

RUN mkdir -p /jmb/config
ADD ./target/JMusicBot-Snapshot-All.jar /jmb/JMusicBot.jar

COPY ./docker-entrypoint.sh /jmb

RUN chmod +x /jmb/docker-entrypoint.sh

VOLUME /jmb/config

ENTRYPOINT ["/jmb/docker-entrypoint.sh"]