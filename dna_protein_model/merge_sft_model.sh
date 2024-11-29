#!/bin/sh
python merge_llama_with_dna_lora.py \
    --base_model genehlm-merge-hf \
    --lora_model genehlm-llama7b-sft/sft_lora_model \
    --output_type huggingface \
    --output_dir genehlm-llama-7b-sft-v0
