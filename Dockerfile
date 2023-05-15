FROM python:3.10

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY ./app /code/app
RUN which uvicorn
RUN ls -a /usr/local/bin
CMD /usr/local/bin/uvicorn app.router:app --host 0.0.0.0 --port 80
