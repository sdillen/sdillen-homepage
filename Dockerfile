FROM node:17-alpine

WORKDIR /usr/src/app
COPY . .

RUN yarn install && yarn run build

ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=3000

EXPOSE 3000

ENTRYPOINT ["yarn", "run", "start"]
