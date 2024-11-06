FROM node:carbon
WORKDIR /home/ec2-user/cicd-pipeline-train-schedule-kubernetes
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8080
CMD [ "npm", "start" ]
