FROM python:3.9

WORKDIR /app
COPY . .

RUN pip install -r requirements.txt

EXPOSE 80
EXPOSE 443

CMD ["python3", "-m", "gunicorn", "-w", "4", "-b", "0.0.0.0:443", \
"--certfile", "/etc/letsencrypt/live/clovett.me/fullchain.pem", \
"--keyfile", "/etc/letsencrypt/live/clovett.me/privkey.pem", \
"website:create_app()"]

