#script1.sh
clear
echo "Starting shell script .."
pip install tf_slim
pip install model-profiler
#pip install tensorflow
#pip install tensorflow-datasets
#pip install tfds-nightly

python3 pakkon.py
python3 FedSimCLR/run.py --dataset='cifar10' --image_size=32 --evel_aplit='test'

python3 pakkon.py
python3 FedSimCLR/run.py --dataset='cifar100' --image_size=32 --evel_aplit='test'

python3 pakkon.py
python3 FedSimCLR/run.py --dataset='imagenet_resized/64x64' --image_size=64 --evel_aplit='validation'

echo "Ending of the script";

cat run.sh
