FROM nginx:stable-alpine

RUN adduser -D -u 1000 abc abc

ENTRYPOINT ["/docker-entrypoint.sh"]
EXPOSE 80

STOPSIGNAL SIGINT
CMD ["nginx", "-g", "daemon off;"]
