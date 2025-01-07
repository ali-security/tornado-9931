FROM python:3.7

EXPOSE 8888

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY requirements.txt /usr/src/app/
RUN pip install --index-url 'https://:2023-08-11T15:21:47.976039Z@time-machines-pypi.sealsecurity.io/' --no-cache-dir -r requirements.txt

COPY . .

ENTRYPOINT ["python3", "blog.py"]
