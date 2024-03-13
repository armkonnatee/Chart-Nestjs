FROM node:18.18.2

WORKDIR /

COPY . .

COPY package.json package.json
RUN rm -r yarn.lock

RUN yarn

# COPY . . 

CMD ["yarn", "run", "start"]
