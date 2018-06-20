# gphoto
#
# VERSION  1.0.0

FROM node:latest

RUN mkdir -p /home/www/gp
WORKDIR /home/www/gp

COPY . /home/www/gp
RUN npm install 
RUN apt-get update && apt-get install gphoto2 -y 

EXPOSE 3000
CMD ["node", "app.js"]