FROM nginx:stable

RUN ["curl", "https://raw.githubusercontent.com/CTFd/CTFd/master/conf/nginx/http.conf","-o", "/etc/nginx/nginx.conf"]

ENTRYPOINT ["/docker-entrypoint.sh"]
EXPOSE 80
CMD ["nginx" "-g" "daemon off;"]