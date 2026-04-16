FROM python:3.9-slim

# Installation des dépendances système nécessaires pour compiler cryptography
RUN apt-get update && apt-get install -y --no-install-recommends \
    gcc \
    python3-dev \
    libffi-dev \
    libssl-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . /app

# Installation des paquets Python
RUN pip install --no-cache-dir -r app/requirements.txt

EXPOSE 5000
CMD ["python", "app/app.py"]
