#!/bin/env python
#!pip install sentencepiece
import sentencepiece as spm

# 假设我们有一个文本文件 'data.txt'，其中包含我们希望训练的文本数据
spm.SentencePieceTrainer.train(input='sampled_data.txt',
                               model_prefix='dna_llama_seg', 
                               vocab_size=30000,
                               model_type='bpe',
                               num_threads=48,
                              )


from sentencepiece import SentencePieceProcessor
model_path = "dna_llama_seg.model"
sp_model = SentencePieceProcessor(model_file=model_path)
mm = sp_model.EncodeAsPieces("TCGACGGCACGCGACAGCAGCGAGCCCCGCGCACCCGAGCGCGAATGCACCTGCTCATACGCCCGCGCTCGCGCCACCTCCGTAGGCGACAGCGACGCCGCCACCTCCGGCA")
print(mm)