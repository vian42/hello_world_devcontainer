FROM eclipse-temurin:21-jdk

# Métadonnées
LABEL maintainer="Vianney MAYNADIER"
LABEL description="Kotlin/JVM development environment with Gradle 9.2.1"

# Variables d'environnement pour Gradle
ENV GRADLE_VERSION=9.2.1
ENV GRADLE_HOME=/opt/gradle
ENV PATH="${GRADLE_HOME}/bin:${PATH}"

# Installation des outils de base
RUN apt-get update && apt-get install -y \
    curl \
    unzip \
    git \
    && rm -rf /var/lib/apt/lists/*

# Téléchargement et installation de Gradle
RUN curl -L https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip -o gradle.zip \
    && unzip -q gradle.zip -d /opt \
    && mv /opt/gradle-${GRADLE_VERSION} ${GRADLE_HOME} \
    && rm gradle.zip

## installation de mask, un gestionnaire de lignes de commande basé sur markdown
RUN curl -L https://github.com/jacobdeichert/mask/releases/download/mask%2F0.11.6/mask-0.11.6-x86_64-unknown-linux-gnu.zip -o /tmp/mask.zip \
    && unzip -l /tmp/mask.zip \
    && unzip -j /tmp/mask.zip "mask-0.11.6-x86_64-unknown-linux-gnu/mask" -d /usr/local/bin \
    && chmod +x /usr/local/bin/mask \
    && rm /tmp/mask.zip

# Répertoire de travail par défaut
WORKDIR /workspace