FROM grafana/grafana:6.5.0-ubuntu
MAINTAINER support@samtsov.com


COPY entrypoint.sh .


# Todo: Just for debugging purposes, can be removed
# Make sure that the init flag is not there
RUN rm -rf /var/lib/grafana/.init

ENTRYPOINT ["./entrypoint.sh"]
