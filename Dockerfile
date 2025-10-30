FROM searxng/searxng:latest

ENV SEARXNG_SETTINGS_PATH=/etc/searxng/settings.yml
ENV UWSGI_HTTP=:8080
ENV UWSGI_WORKERS=2

EXPOSE 8080

CMD ["uwsgi", "--ini", "/etc/searxng/uwsgi.ini"]
