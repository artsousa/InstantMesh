

IMAGES=$(ls examples/ | grep -E "\.png$|\.jpg$")


for file in $IMAGES
do
	echo 'running for: '$file
	CUDA_VISIBLE_DEVICES=0 python run.py configs/instant-nerf-large.yaml examples/$file --save_video --view 4 --seed 3407 --diffusion_steps 75
done
# CUDA_VISIBLE_DEVICES=0 python run.py configs/instant-mesh-large.yaml examples/pikachu.png --save_video --view 6 --seed 3407 --diffusion_steps 100
