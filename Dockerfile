FROM python:3.4-alpine
ADD . /code
WORKDIR /code
RUN pip install -r requirements.txt
RUN apk --no-cache add curl 
CMD ["python", "app.py"]
