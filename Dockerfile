# Вибираємо базовий образ
FROM node:14

# Встановлюємо робочу директорію
WORKDIR /app

# Копіюємо package.json і package-lock.json
COPY package*.json ./

# Встановлюємо залежності
RUN npm install

# Копіюємо решту файлів проекту
COPY . .

# Вказуємо команду для запуску додатку
CMD ["npm", "start"]

# Експонуємо порт
EXPOSE 5000
