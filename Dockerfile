# Dockerfile
# Використовуємо офіційний легкий образ Python
FROM python:3.9-slim

# Встановлюємо робочу директорію
WORKDIR /app

# Копіюємо файли для встановлення
COPY setup.py ./
COPY custom_sort/ ./custom_sort/

# Встановлюємо наш пакет. Це автоматично завантажить і click.
RUN pip install .

# Вказуємо, що при запуску контейнера буде виконуватися наша команда
ENTRYPOINT ["csort"]

# За замовчуванням, показуємо help-повідомлення
CMD ["--help"]