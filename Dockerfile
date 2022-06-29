FROM nginx:1.23

COPY ./nginx.conf.tmpl .
COPY ./startup.sh .

CMD ["./startup.sh"]
