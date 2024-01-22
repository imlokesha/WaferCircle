FROM python:3.7
COPY . /app
WORKDIR /app
# Increase thread and file limits
RUN echo "* soft nproc 4096" >> /etc/security/limits.conf \
    && echo "* hard nproc 4096" >> /etc/security/limits.conf \
    && echo "* soft nofile 4096" >> /etc/security/limits.conf \
    && echo "* hard nofile 4096" >> /etc/security/limits.conf
# RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

# RUN pip install -r requirements.txt
ENTRYPOINT [ "python" ]
# CMD [ "main.py" ]
CMD [ "python", "main.py" ]