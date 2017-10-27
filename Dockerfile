FROM alpine:3.1

# Update
RUN apk add --update nodejs

# Install app dependencies
MKDIR /src
COPY package.json /src/package.json
RUN cd /src; npm install

# Bundle app source
COPY . /src

EXPOSE  8887
EXPOSE  8888
CMD ["node", "/src/api/api.js"]

