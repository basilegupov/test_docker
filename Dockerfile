# Використовуємо базовий образ Python
FROM python:3.11

# Встановлюємо pipenv
RUN pip install pipenv

# Копіюємо файли проекту в контейнер
COPY . /app
WORKDIR /app

# Установка залежностей проекту
RUN pipenv install

# Вказуємо команду для запуску вашого додатку
CMD ["pipenv", "run", "python", "mian.py"]
