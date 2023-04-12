FROM python:3.9

WORKDIR /app
COPY . .

RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["python3", "-m", "gunicorn", "-w", "4", "-b", "-b", "0.0.0.0:5000", \
"--certfile", "/etc/letsencrypt/live/clovett.me/fullchain.pem", \
"--keyfile", "/etc/letsencrypt/live/clovett.me/privkey.pem", \
"website:create_app()"]

