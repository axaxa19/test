# Используем официальный образ Jenkins
FROM jenkins/jenkins:lts

# Переключаемся на пользователя root для установки дополнительных пакетов
USER root

# Устанавливаем Docker, Node.js и npm
RUN apt-get update && \
    apt-get install -y docker.io curl && \
    curl -sL https://deb.nodesource.com/setup_16.x | bash - && \
    apt-get install -y nodejs

# Возвращаемся к пользователю Jenkins
USER jenkins
