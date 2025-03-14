FROM node:16-alpine

WORKDIR /app

# Install dependencies
COPY package.json .
RUN npm install

# Copy the app source code
COPY . .

EXPOSE 3000

CMD ["npm", "start"]
