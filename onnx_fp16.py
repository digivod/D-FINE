import onnx
import onnxsim
from onnxconverter_common import float16

# 1️⃣ Simplify ONNX Model
model_path = "model.onnx"
model_simplified_path = "model_simplified.onnx"

model, check = onnxsim.simplify(model_path)
assert check, "Simplification failed"
onnx.save(model, model_simplified_path)

# 2️⃣ Convert to FP16
model_simplified = onnx.load(model_simplified_path)
model_fp16 = float16.convert_float_to_float16(model_simplified, keep_io_types=False)
onnx.save(model_fp16, "model_fp16.onnx")

print("Done: Simplified and converted to FP16.")
