export LD_PRELOAD=/home/mindocr/.local/lib/python3.7/site-packages/skimage/_shared/../../scikit_image.libs/libgomp-d22c30c5.so.1.0.0
export DEVICE_ID=5

python train.py --config configs/yolov8/yolov8n.yaml
