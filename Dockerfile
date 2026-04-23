FROM python:3.12-slim

WORKDIR /app

# System dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    gcc g++ git \
    && rm -rf /var/lib/apt/lists/*

# Python dependencies (layer cache optimized)
COPY requirements.txt .
RUN pip install --no-cache-dir pynini==2.1.6 \
    && pip install --no-cache-dir git+https://github.com/WhizZest/WeTextProcessing.git \
    && pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 18083

ENV PYTHONUNBUFFERED=1

CMD ["sh", "/app/start.sh"]
