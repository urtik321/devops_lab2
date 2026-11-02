# используем базовый образ node
FROM node:24-alpine

WORKDIR /app

# TODO: необходимо скопировать файлы
# package.json, package-lock.json, которые содержат
# список зависимостей npm
COPY package.json package-lock.json ./

# TODO: необходимо установить пакеты node_modules
RUN npm install

# TODO: необходимо модифицировать переменную
# PATH таким образом, чтобы в начале содержимого
# переменной PATH была указана директория
# с бинарниками node_modules/.bin
ENV PATH /app/node_modules/.bin:$PATH
