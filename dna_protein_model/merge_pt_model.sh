#!/bin/sh
python merge_llama_with_dna_lora.py \
    --base_model dnahlm-merge-hf-4g \
    --lora_model genehlm_llama_7b/pt_lora_model \
    --output_type huggingface \
    --output_dir genehlm-merge-hf
