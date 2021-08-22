# 作成時の最新
FROM golang:alpine3.14
# 作業ディレクトリ
RUN mkdir /root/bin && \
    mkdir /root/src && \
    apk update && \
    apk add git vim bash

# コンテナログイン時のディレクトリ
WORKDIR /root

