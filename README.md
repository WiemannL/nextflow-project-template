Nextflow MTAG wrapper

This repository provides a Nextflow skeleton to run pairwise MTAG between an inflammation GWAS and multiple brain GWAS.

Files created:
- `main.nf` — pipeline entrypoint (DSL2) and minimal workflow that calls `modules/hello`.
- `nextflow.config` — minimal profiles (standard, docker).
- `modules/hello/hello.nf` — example module and process.

Quick start
1. Clone mtag github repository https://github.com/JonJala/mtag

2. Create a `samples.csv` file with a header containing: 
inflammation_gwas and brain_gwas
path_inflammation, path_braintrait

This creates a row for each MTAG pair. 

3. Run the pipeline locally:
Note: can only be run in Python 2.7 environment!!
```bash
nextflow run main.nf \
    --samples /pathtocsvfile/samples.csv \
    --outdir /pathtoresults \
    --mtag_dir /home/law22/data/LIV/MTAG/mtag
```

