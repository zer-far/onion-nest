FROM alpine:latest
RUN apk add --no-cache tor
CMD ["tor"]
