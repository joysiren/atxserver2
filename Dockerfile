FROM python:3.6

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

ADD . /app
WORKDIR /app

ENTRYPOINT [ "bash", "scripts/wait-for-db.sh" ]
CMD ["python", "-u", "main.py"]
