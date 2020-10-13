FROM mongo

RUN apt-get update && apt-get install -y ruby

WORKDIR /usr/src/app

COPY . .

RUN chmod +x ./entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]
