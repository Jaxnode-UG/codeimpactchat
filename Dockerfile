FROM mhart/alpine-node:8.4.0

RUN mkdir /src
WORKDIR /src

COPY package.json /src
RUN npm install

COPY . /src
CMD ["npm","start"] 