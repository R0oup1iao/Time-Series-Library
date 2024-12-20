export CUDA_VISIBLE_DEVICES="0"

model_name=DLinear
num_workers=10
enc_in=1063

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/BjTT/ \
  --data_path bjtt.csv \
  --model_id bjtt_96_5 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 5 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in $enc_in \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --inverse \
  --num_workers $num_workers \
  --itr 1

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/BjTT/ \
  --data_path bjtt.csv \
  --model_id bjtt_96_10 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 10 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in $enc_in \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --inverse \
  --num_workers $num_workers \
  --itr 1

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/BjTT/ \
  --data_path bjtt.csv \
  --model_id bjtt_96_15 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 15 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in $enc_in \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --inverse \
  --num_workers $num_workers \
  --itr 1