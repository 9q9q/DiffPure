#!/usr/bin/env bash
cd ../..

CUDA_VISIBLE_DEVICES=0,1,2,3 python eval_faces.py --exp ./exp_results --config faces.yml \
  -i throwawa\
  --domain faces \
  --classifier_name celebahq__Smiling \
  --seed 0 \
  --data_seed 0 \
  --diffusion_type celebahq-ddpm \
  --adv_batch_size 8 \
  --t 500 \
  --sample_step 2 \

  # --adv_batch_size 8 \  # mix of degradations, can also do more or less
  # --adv_batch_size 2 \  # for clean only