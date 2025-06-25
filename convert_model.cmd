conda activate dfine
python tools/deployment/export_onnx.py --check -c configs/dfine/dfine_hgnetv2_l_coco.yml -r models\dfine_l_obj2coco_e25.pth
trtexec --onnx="models\dfine_l_obj2coco_e25.onnx" --saveEngine="model.engine" --fp16