#!/bin/sh
python merge_llama_with_dna_lora.py \
    --base_model llama-7b-hf \
    --lora_model dnahlm_llama_7b/pt_lora_model \
    --output_type huggingface \
    --output_dir dnahlm-merge-hf
