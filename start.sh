ln -s /mnt/app/models /app/models && ln -s /mnt/app/.cache /app/.cache
python app_onnx.py --host 0.0.0.0
