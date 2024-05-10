# інструкція по створенню образа нашого проекту
# на основі якого можна стоврити контейнер серверу

# на основі якого образу буду будувати свій образ
FROM node:22-alpine

# виконати вказану команду в терміналі
RUN mkdir /server

# зкопіювати файлиз з локації на хості в локацію у майбутньому контейнері
COPY ./ /server

# змініти поточну папку у контейнері
WORKDIR /server

RUN npm install

# кажу що контейнер готовий слухати запити на 3000 порті 
EXPOSE 3000

# команда яку викануємо при запуску контейнера
CMD npm start