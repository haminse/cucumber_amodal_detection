# python3 setup.py build develop #--no-deps
export PYTHONPATH=$PYTHONPATH:`pwd`
#export CUDA_LAUNCH_BLOCKING=1 # for debug
export CUDA_VISIBLE_DEVICES=0

method="aisformer"
# model_dir="/home/tqminh/AmodalSeg/data/train_outputs/${method}/${method}_R_50_FPN_1x_amodal_kins"
model_dir="/home/ms/data/train_outputs/aisformer/aisformer_R_50_FPN_1x_amodal_kins"
python3 demo/demo.py --config-file ${model_dir}/config.yaml \
  --input /home/ms/data/train_outputs/aisformer/aisformer_R_50_FPN_1x_amodal_kins/demo/da.jpg \
  --output /home/ms/data/train_outputs/aisformer/aisformer_R_50_FPN_1x_amodal_kins/demo/ \
  --confidence-threshold 0.7 \
  --opts MODEL.WEIGHTS ${model_dir}/model_final.pth \

  # --input /home/ms/data/datasets/KINS/train_imgs/000000.png \

  # --input /home/ms/data/datasets/KINS/test_imgs/'*.png' \