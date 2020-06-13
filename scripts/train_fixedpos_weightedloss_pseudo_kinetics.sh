NCCL_LL_THRESHOLD=0 python -W ignore -i -m torch.distributed.launch --nproc_per_node $1 --master_port $2 main.py --batch_size 2 -j 3 --fp16 --use_oops_gt --use_pseudo_oops_gt --image_dim 112 --min_trajectory_size 6 --max_trajectory_size 8 --p_no_sep_seq 0.2 --fixed_position_embeddings --frames_per_clip 16 --num_clips_between_clips 4 --weighted_clip_loss --grad_accumulate_steps 8 "${@:3}"
