FROM python:3.7
cpus and --memory flags
docker build --cpus="2" --memory="4g" -t myimage
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT [ "python" ]
CMD [ "main.py" ]