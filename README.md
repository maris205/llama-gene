# llama-gene
A General-purpose Gene Task Large Language Model Based on Instruction Fine-tuning

# abstract
Building a general-purpose task model similar to ChatGPT has been an important research direction for gene large language models. Instruction fine-tuning is a key component in building ChatGPT, but existing instructions are primarily based on natural language. Natural language and DNA sequences have significant differences in tokenization and encoding. Therefore, constructing a multilingual model that can handle both natural language and DNA sequences is crucial for solving this problem.In this paper, we expand the capabilities of the LLaMA large language model to include gene language. This involves expanding the vocabulary using the Byte Pair Encoding (BPE) method, specifically tailored for DNA and protein sequences, and conducting further pre-training on these sequences. We then convert various downstream gene task data into a unified format for instruction fine-tuning and further fine-tune the model on this data.Our study demonstrates that a mixed model of gene and natural language, fine-tuned with instructions, achieves results comparable to the current state-of-the-art (SOTA) in tasks such as gene classification and gene sequence interaction. This provides a promising direction for building a unified large language model for gene tasks.

# brief of llama-gene
Since the original llama model has been trained primarily on English natural language text, we expanded the vocabulary and conducted further pre-training using DNA and protein sequences. On this basis, we converted various gene sequence tasks, including protein and DNA classification tasks, protein-protein interaction tasks, and protein-DNA correlation tasks, into consistent instruction data using different prompt templates. We then used this instruction data to fine-tune the pre-trained model, resulting in the llama-gene model. The process is illustrated in the following diagram:

![Alt Text](./llama-gene.png)

# datasets
| period           | datasets                        | data size | data type         |
|------------------|---------------------------------|-----------|-------------------|
| BPE training     | multiple model organism genomes | 1G        | DNA               |
| BPE training     | UniProt [multispecies]          | 1G        | Protein sequence  |
| Continue training| multiple model organism genomes | 16G       | DNA               |
| Continue training| Swiss-Prot/TrEMBL               | 16G       | Protein sequence  |
| Continue training| s2orc/biology paper             | 16G       | Natural Language  |
| Instruction finetune| GLUE/convert                    | 100M      | DNA downstream    |
| Instruction finetune| lucaone/convert                 | 100M      | Protein downstream|
| Instruction finetune| UniProt function                | 300M      | Protein translation|


# Training Strategy
## Tokenization

## Pretraining

## Instruction Fine-tuning


