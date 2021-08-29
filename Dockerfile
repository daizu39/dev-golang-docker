# 作成時の最新
FROM golang:alpine3.14
# 作業ディレクトリ
RUN mkdir -p ~/.vim/pack/minpac/opt/ && \
    apk update && \
    apk add git vim bash curl && \
    git clone --depth 1 https://github.com/k-takata/minpac.git ~/.vim/pack/minpac/opt/minpac -b v3.0.0 && \
    curl https://raw.githubusercontent.com/daizu39/dotfiles/master/_vimrc -o /root/.vimrc && \
    curl https://raw.githubusercontent.com/daizu39/dotfiles/master/_bashrc -o /root/.bashrc && \
    vim -c PackUpdate -c quitall && \
    mkdir /root/bin && \
    mkdir /root/src

# コンテナログイン時のディレクトリ
WORKDIR /root

