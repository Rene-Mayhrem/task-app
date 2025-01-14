FROM node:14-alpine AS build 

WORKDIR /app 
COPY package.json package-lock.json tsconfig.json ./
RUN npm install --legacy-peer-deps
COPY . .
RUN npm run build  

FROM nginx:alpine 
RUN apk add --no-cache iputils curl
COPY --from=build /app/build /usr/share/nginx/html 
EXPOSE 80 
CMD ["nginx", "-g", "daemon off;"]