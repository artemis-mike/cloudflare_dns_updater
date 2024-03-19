FROM python:3.13-rc-alpine3.18

RUN ["mkdir", "/cloudflare-updater"]
WORKDIR /cloudflare-updater
COPY ./source .

CMD ["python3", "./update-a-record.py"]