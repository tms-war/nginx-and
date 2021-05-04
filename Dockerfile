FROM nginx:stable-alpine

RUN adduser -D -u 1000 abc abc

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["nginx" "-g" "daemon off;"]
