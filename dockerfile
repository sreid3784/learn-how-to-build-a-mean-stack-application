# using Node v10
FROM node:10

# Create app directory
WORKDIR /usr/src/lafs-api

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

#stuff for web server start up
#RUN npm install -g @angular/cli@v6-lts
#RUN npm install

# If you tre building your code for production
# RUN npm ci --only=production

#Bundle app source
COPY . .

#Expose port 3000 outside container
EXPOSE 3000
# Command used to start application

CMD npm run start