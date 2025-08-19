FROM node:18
RUN npm install -g n8n
WORKDIR /usr/src/app
COPY workflow.json ./workflow.json
CMD ["n8n", "execute", "--file", "workflow.json"]
