ln -s /mnt/app/models /app/models && ln -s /mnt/app/cache /app/.cache
export HF_ENDPOINT=https://hf-mirror.com
python app_onnx.py --host 0.0.0.0
