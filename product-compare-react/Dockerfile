FROM node:10.16.0 as react
USER root
WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH
COPY package.json ./
COPY package-lock.json ./
RUN npm ci --loglevel verbose
RUN npm install --silent
COPY . /app
RUN npm run build
FROM nginx:1.16.0-alpine
COPY --from=react /app/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
