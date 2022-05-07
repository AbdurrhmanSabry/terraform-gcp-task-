FROM python:3.11.0a7-alpine3.15


RUN apk update ;\
    apk upgrade ; \
    mkdir /app ; \
    apk add git 
WORKDIR /app
RUN git clone https://github.com/atefhares/DevOps-Challenge-Demo-Code.git ; \
    pip3 install tornado ;\
    pip3 install redis
ENV ENVIRONMENT=Dev
ENV HOST=localhost
ENV PORT=8000
ENV REDIS_HOST=localhost
ENV REDIS_PORT=6379
ENV REDIS_DB=0 
EXPOSE 8000 
CMD [ "python3" , "/app/DevOps-Challenge-Demo-Code/hello.py" ]
 