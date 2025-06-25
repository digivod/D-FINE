conda activate dfine
python tools/inference/onnx_inf.py --onnx "models/dfine_l_obj2coco_e25.onnx" --input image.jpg
python tools/inference/trt_inf.py --trt "models/dfine_l_obj2coco_e25.engine" --input image.jpg