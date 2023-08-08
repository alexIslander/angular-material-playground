# Stage 1: Build
FROM node:18 AS build
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build --prod

# Stage 2: Production
FROM nginx:alpine AS production
COPY --from=build /app/dist/angular-material-playground /usr/share/nginx/html
RUN rm /etc/nginx/conf.d/default.conf

# Copy the custom nginx configuration to the container
COPY nginx.conf /etc/nginx/conf.d/

# Set the command to start the server
CMD ["nginx", "-g", "daemon off;"]
