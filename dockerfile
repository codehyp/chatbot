FROM python:3.9

WORKDIR /dockerApp

ADD chatBot.py .

COPY . /dockerApp/

RUN pip install requests beautifulsoup4 python-dotenv

#COPY . .

ENV PORT=8080

EXPOSE 8080

CMD ["python","./chatBot.py"]

###
# Dockerfile for quay.io/kitti/distributed

#FROM python:3.9-slim-buster

#WORKDIR /app

#COPY requirements.txt /
#RUN pip install --trusted-host pypi.org --trusted-hashes https://pypi.tuna.tsinghua.edu.cn/simple

#COPY..

#CMD ["gunicorn", "-w", "5", "-b", "0.0.0.0:8786", "dataset_server.wsgi:application"]

###