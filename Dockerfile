# https://stackoverflow.com/questions/71860197/deploy-telegram-bot-pyrogram-on-back4app

# Choosing an image for you container.
FROM python:3.11.0

# Setting your working directory
WORKDIR /EXAMPLE

# This command would copy EVERY FILE from your project folder into your container, so be careful.
# COPY . .
COPY ["bot.py", "config.py", "app.json", "requirements.txt", "app.py", "./"]

# Installing needed packages and dependencies.**
RUN pip install -r requirements.txt

# Setting a port for your app communications with Telegram servers.
EXPOSE 80

# This command basically executes your main file with Python.
CMD ["python", "bot.py"]
CMD ["python", "app.py"]

# HEALTHCHECK --interval=30s --timeout=10s CMD curl --fail http://localhost:80/healthcheck || exit 1
