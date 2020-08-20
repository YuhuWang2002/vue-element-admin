FROM npmjs/npm-docker-baseline:12-alpine
RUN mkdir /web
COPY . /web
WORKDIR /web
RUN npm install
EXPOSE 80
ENTRYPOINT ["sh", "-c"]
CMD ["npm run dev"]
