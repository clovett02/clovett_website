FROM python:3.9

WORKDIR /app
COPY . .

RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["python3", "-m", "gunicorn", "-b", "0.0.0.0:5000", "website:create_app()", \
"--certfile", "/etc/letsencrypt/live/clovett.me/fullchain.pem", \
"--keyfile", "/etc/letsencrypt/live/clovett.me/privkey.pem"]

