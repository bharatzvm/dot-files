FROM ubuntu

RUN rm /bin/sh && ln -s /bin/bash /bin/sh

RUN apt-get update \
  && apt-get install -y vim \
  curl\
  git\
  build-essential\
  cmake\
  libssl-dev

ENV NVM_DIR /root/.nvm
ENV NODE_VERSION 10.6.0


RUN mkdir $NVM_DIR\
  && curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash\
  && chmod +x $NVM_DIR/nvm.sh\
  && source $NVM_DIR/nvm.sh\
  && nvm install $NODE_VERSION\
  && nvm alias default $NODE_VERSION\
  && nvm use default\
  && mkdir -p /root/.vim/bundle


ENV NODE_PATH $NVM_DIR/versions/node/v$NODE_VERSION/lib/node_modules
ENV PATH      $NVM_DIR/versions/node/v$NODE_VERSION/bin:$PATH

COPY vimrc /root/.vimrc

RUN apt-get install -y software-properties-common\
  && add-apt-repository ppa:jonathonf/vim\
  && apt update\
  && apt install -y vim

RUN git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim\
  && vim +PluginInstall +qall

RUN rm -rf /var/lib/apt/lists/*
