# export LD_PRELOAD=/home/liubingyu/.local/lib/python3.7/site-packages/skimage/_shared/../../scikit_image.libs/libgomp-d22c30c5.so.1.0.0
# source /usr/local/Ascend/ascend-toolkit/set_env.sh 

export RANK_TABLE_FILE="hccl_4p_4567_127.0.0.1.json"
export DEVICE_NUM=8
export RANK_SIZE=4

for ((i=0;i<$RANK_SIZE;i++));
do
    export DEVICE_ID=$((i+4))
    export RANK_ID=$i
    python train.py --config configs/yolov8/yolov8n.yaml --is_parallel True --device_per_servers 4 > run_train_$i.log 2>&1 &
done
