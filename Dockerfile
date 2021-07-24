# syntax=docker/dockerfile:1

FROM node:14 as base
WORKDIR app/
COPY ["package.json","package-lock.json*","./"]

FROM base as prod
ENV NODE_ENV=production
RUN npm ci --production
COPY . .
CMD ["node","helloworld.js"]

FROM base as test
RUN npm ci
COPY . .
RUN npm run test