FROM python:alpine

WORKDIR /usr/app

COPY requirements.txt /usr/app/

RUN apk add --update py3-pip
RUN pip install -r requirements.txt

COPY ./ /usr/app/

CMD ["python", "app.py"]
