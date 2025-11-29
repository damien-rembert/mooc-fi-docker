FROM node:16

WORKDIR /usr/src/app

COPY . .

# Install all packages with `npm install`
RUN npm install

ENV REACT_APP_BACKEND_URL=http://localhost:8080
# First, you need to build the static files with `npm run build`
RUN npm run build

# - install: `npm install -g serve`
RUN npm install -g serve

EXPOSE 5000

# - serve: `serve -s -l 5000 build`
CMD ["serve", "-s", "-l", "5000", "build"]