FROM node:7.3-alpine

MAINTAINER ahedeid@gmail.com

ENV YARN_VER=v0.18.1

# RUN  mkdir /usr/lib/node_modules && cd  /usr/lib/node_modules \
#   && curl -o yarn-${YARN_VER}.tar.gz -sSL \
      # https://github.com/yarnpkg/yarn/releases/download/${YARN_VER}/yarn-${YARN_VER}.tar.gz \
  # && tar -zxf yarn-${YARN_VER}.tar.gz \
  # && rm yarn-${YARN_VER}.tar.gz \
  # && mv dist yarn \
  # && ln -s /usr/lib/node_modules/yarn/bin/yarn.js /usr/local/bin/yarn \
  # && cd /

RUN npm install -g yarn

COPY . /src

RUN cd /src && yarn install

EXPOSE 8080

CMD cd /src && node ./app.js
