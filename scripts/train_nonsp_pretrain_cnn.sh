NCCL_LL_THRESHOLD=0 python -W ignore -i -m torch.distributed.launch --nproc_per_node $1 --master_port $2 main.py --batch_size 2 -j 5 --fp16 --use_oops_gt --use_oops_only --image_dim 208 --min_trajectory_size 6 --max_trajectory_size 8 --p_no_sep_seq 1 --from_pretrained "${@:3}"