FROM python:3.12.2
EXPOSE 80
COPY . /giropops-senhas
WORKDIR /giropops-senhas
RUN pip install --no-cache-dir -r requirements.txt && pip install Werkzeug==2.2.2
ENV REDIS_HOST=localhost
ENTRYPOINT [ "flask" ]
CMD [ "run", "--host=0.0.0.0" ]
