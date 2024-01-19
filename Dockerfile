FROM python:3.7
RUN pip install --upgrade pip
COPY . /app
WORKDIR /app
RUN pip install --no-cache-dir -r requirements.txt
ENTRYPOINT [ "python" ]
CMD [ "main.py" ]