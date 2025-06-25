conda create -n dfine python=3.11.9
conda activate dfine
pip install -r requirements.txt
pip install -r tools/inference/requirements.txt
pip install -r tools/benchmark/requirements.txt
pip install opencv-python