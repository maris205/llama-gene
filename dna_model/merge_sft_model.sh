#!/bin/sh
python merge_llama_with_dna_lora.py \
    --base_model dnahlm-merge-hf \
    --lora_model dnahlm-llama7b-sft/sft_lora_model \
    --output_type huggingface \
    --output_dir dnahlm-llama-7b-sft-v0
