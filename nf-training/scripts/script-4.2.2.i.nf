nextflow.enable.dsl=2

reads = Channel.fromPath( 'data/ggal/*.fq' )

process foo {
    input:
    file 'sample.fastq'
    script:
    """
    ls sample.fastq
    """
}

workflow{
    result= foo(reads)
}
