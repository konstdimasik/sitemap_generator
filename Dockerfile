FROM python:3.10.4

RUN mkdir -p /code
WORKDIR /code
ENV PYTHONPATH /code
ENV URL='https://ya.ru/'

COPY requirements.txt /code
RUN  pip3 install --upgrade pip
RUN  pip3 install -r requirements.txt

COPY . /code

CMD ["sh", "-c", "python3 /code/generator/sitemap_generator_async.py $URL"]
