NCCL_LL_THRESHOLD=0 python -W ignore -i -m torch.distributed.launch --nproc_per_node $1 --master_port $2 main.py --batch_size 2 -j 3 --use_oops_gt --use_oops_only --image_dim 112 --fixed_position_embeddings --frames_per_clip 16 --num_clips_between_clips 4 --grad_accumulate_steps 8 --svo --fp16 --svo_pretrained_embs --svo_freeze_embs --test --load_entire_video --max_trajectory_size 50 --min_trajectory_size 0 "${@:3}"
