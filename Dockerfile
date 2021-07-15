FROM mongo:latest

WORKDIR /usr/src/app

COPY . .

RUN chmod +x ./entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]
