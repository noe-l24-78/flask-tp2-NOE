FROM python:3.9-slim
# Ajout de --no-install-recommends pour calmer Hadolint
RUN apt-get update && apt-get install -y --no-install-recommends \
    gcc \
    python3-dev \
    libffi-dev \
    libssl-dev \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir -r app/requirements.txt
EXPOSE 5000
CMD ["python", "app/app.py"]
