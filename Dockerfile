FROM node:8.8.1-alpine

# Update

#ADD package.json /tmp/package.json

# Bundle app source
COPY . /src

EXPOSE  8887
EXPOSE  8888
CMD ["node", "/src/api/api.js"]

