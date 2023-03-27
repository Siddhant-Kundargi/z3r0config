FROM nginx:stable

RUN ["/usr/bin/curl", "https://raw.githubusercontent.com/CTFd/CTFd/master/conf/nginx/http.conf","-o", "/etc/nginx/nginx.conf"]

ENTRYPOINT ["/docker-entrypoint.sh"]
EXPOSE 80
CMD ["/usr/sbin/nginx","-g","daemon off;"]
