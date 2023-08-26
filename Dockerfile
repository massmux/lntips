FROM golang:1.20


RUN cd /opt/ && git clone https://github.com/LightningTipBot/LightningTipBot.git

WORKDIR /opt/LightningTipBot

ENV CGO_ENABLED=1
RUN go build .

CMD ["LightningTipBot"]
