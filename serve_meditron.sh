# CKPT_PATH="/var/tmp/xdgcache-patbha/huggingface/hub/models--TheBloke--Meditron-7B-AWQ/snapshots/17b855f2e6792c940ab8da97595e6ba392761b88/"
CKPT_PATH="TheBloke/meditron-7B-AWQ"
python3 -m fastchat.serve.model_worker \
    --model-path $CKPT_PATH \
    --model-name meditron-7b-awq \
    --conv-template one_shot_medical \
    --controller-address http://localhost:21001 \
    --worker-address http://localhost:31000 \
    --port 31000 \
    --seed 0