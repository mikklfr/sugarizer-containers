FROM node:latest

WORKDIR /opt
RUN git clone https://github.com/llaske/sugarizer
RUN git clone https://github.com/llaske/sugarizer-server

WORKDIR /opt/sugarizer-server

RUN npm install

EXPOSE 8080
CMD [ "npm", "run", "start" ]