FROM node:18-alpine AS installer

WORKDIR /app

COPY package*.json ./

RUN npm install 

COPY . .

RUN npm run build

FROM nginx:latest AS deployer

COPY --from=installer /app/build /usr/share/nginx/html



<<<<<<< HEAD

=======
>>>>>>> 3b8ab5b6524127bfa4cdfa47fdc4a9d784c3cc5a
