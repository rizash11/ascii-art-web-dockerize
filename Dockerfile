FROM golang:alpine as builder
RUN mkdir builder
COPY . /builder
WORKDIR /builder
RUN go build -o /ascii-art-web

FROM alpine
RUN mkdir app
WORKDIR /app
COPY --from=builder /builder/ui ./ui
COPY --from=builder /builder/asciiArt ./asciiArt
COPY --from=builder /ascii-art-web .

EXPOSE 4000
CMD [ "/app/ascii-art-web" ] 