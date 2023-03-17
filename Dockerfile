FROM python:3.9

WORKDIR /app
COPY . .

RUN pip install -r /app/requirements.txt

EXPOSE 80

ENTRYPOINT [ "python3" ]
CMD ["main.py"]

