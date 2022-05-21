FROM python:3.9-slim-bullseye as python-build-stage

RUN apt-get update && apt-get install --no-install-recommends -y \
    build-essential libpq-dev

COPY ./requirements.txt .

RUN pip wheel --wheel-dir /usr/src/app/wheels -r requirements.txt

CMD ["bash"]

FROM python:3.9-slim-bullseye as python-run-stage

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN apt-get update && apt-get install --no-install-recommends -y libpq-dev  \
    && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false \
    && rm -rf /var/lib/apt/lists/*

COPY --from=python-build-stage /usr/src/app/wheels /wheels/

RUN pip install --no-cache-dir --no-index --find-links=/wheels/ /wheels/* \
   && rm -rf /wheels/

CMD ["bash"]