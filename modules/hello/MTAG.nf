// Minimal example module (DSL2)

process MTAG_Process {
    // Run this process inside a container image
    container 'ghcr.io/johnsonlab-ic/causal-flow:latest' //in causal-flow pipeline, goes to config file to see how it should run it 

    tag { sampleName } //message tracking for each process 
    publishDir "${params.outputDir}/${sampleName}", mode: 'copy'
    label 'low' //tells how to submit job

    input:
    path GWAS //path to GWAS files, GWAS1,2, etc 

    output:
    path "${GWAS}_greeting.txt"

    script:
    """
    echo "Hello from Nextflow, ${sampleName}!" > ${sampleName}_greeting.txt
    cat ${sampleName}_greeting.txt
    """
}

// NOTE: removed the workflow wrapper so this module only exposes the process
// Use the process directly from `main.nf` (e.g. include { HELLO_PROCESS } from './modules/hello/hello')