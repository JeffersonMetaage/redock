#Stage1
# FROM node:17-alpine as builder
FROM node:alpine
WORKDIR /app
COPY package.json .
COPY package-lock.json .
COPY . .
RUN npm install
CMD ["npm", "run", "start"]
# RUN npm run build

# #Stage2
# FROM nginx:1.19.0
# WORKDIR /usr/share/nginx/html
# RUN rm -rm ./*
# COPY --from=build /app/build .
# ENTRYPOINT ["nginx", "-g", "daemon off;"]