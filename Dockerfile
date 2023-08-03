FROM python:3.10.12-slim
ADD . .
WORKDIR .
EXPOSE 8080
EXPOSE 5432

ADD requirements.txt /microservice

RUN pip install -r requirements.txt

CMD python main.py