FROM python:alpine3.19
EXPOSE 5000
COPY . /giropops-senhas
WORKDIR /giropops-senhas
RUN pip install --no-cache-dir -r requirements.txt && pip install Werkzeug==2.2.2
ENV REDIS_HOST=localhost
ENTRYPOINT [ "flask" ]
CMD [ "run", "--host=0.0.0.0" ]
