FROM python:3.9-slim-bullseye

RUN apt-get update && apt-get install --no-install-recommends -y \
    build-essential libpq-dev

COPY ./requirements.txt .

RUN pip install -r ./requirements.txt

RUN apt-get remove -y build-essential libpq-dev
RUN apt-get purge -y build-essential libpq-dev
RUN apt-get -y autoremove
RUN apt-get -y autoclean

CMD ["bash"]
