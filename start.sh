ln -s /mnt/app/models /app/models && ln -s /mnt/app/cache /app/.cache && ln -s /mnt/app/cache/generated_audio /app/generated_audio 
export HF_ENDPOINT=https://hf-mirror.com
export TMPDIR=/mnt/app/cache

python app_onnx.py --host 0.0.0.0
