# Rare Diseases workflow for WES-TES

This is an adaptation of [Wetlab2Variations CWL workflow](https://github.com/inab/Wetlab2Variations) to make it compatible with the integrated WES-TES workflow execution environment. Most of the work was done by contributors of [the upstream repository](https://github.com/jarnolaitinen/RD_pipeline).

## Requirements
To run this workflow you will need:
1. the URL of WES-TES execution environment, where the workflow will be executed
2. 5 indirect input files containing the data accessible to your workflow (e.g. present in the Local Site Storage or User Workspace of the WES-TES, where the workflow will be executed):

  - 2 fastq files
  - a reference genome file
  - a known sites file
  - a known indels file
3. 4 direct input files containing URLs of the above mentioned input files, that also need to be accessible to your workflow (e.g. uploaded to the User Workspace of the execution environment)
4. the URL of the workflow itself
5. Inputs for the workflow described as a JSON file, if you want to interact with the WES API directly, or YAML file, if you want to use WesCli command line utility.

## Example 

1. We will assume workflow execution environment to be installed at:
```
http://wes-tes-example.tsi.ebi.ac.uk
```
2. The datasets are present in the Local Site Storage of the environment and accesible to workflows above under URLs:

Input | URL
------------ | -------------
Fastq | `http://site-storage/rd/full/U5c_CCGTCC_L001_R1_001.fastq.gz` <br/> `http://site-storage/rd/full/U5c_CCGTCC_L001_R2_001.fastq.gz`
Reference genome | `http://site-storage/rd/full/hs37d5.fa.gz`
Known sites | `http://site-storage/rd/full/dbsnp_138.b37.vcf.gz`
Known indels | `http://site-storage/rd/full/Mills_and_1000G_gold_standard.indels.b37.vcf`

3. Direct input files are present in the User Workspace:

Input name | External URL | Internal URL | Contents
--- | --- | --- | ---
curl_reference_genome_url | `https://wes-tes-example.tsi.ebi.ac.uk/data/tmp/rd/full/reference_seq_url.txt` | `file:///data/tmp/rd/full/reference_seq_url.txt` | Link
curl_fastq_urls | `https://wes-tes-example.tsi.ebi.ac.uk/data/tmp/rd/full/fastq_files_urls.txt` | `file:///data/tmp/rd/full/fastq_files_urls.txt` | Link
curl_known_indels_url | `https://wes-tes-example.tsi.ebi.ac.uk/data/tmp/rd/full/known_indels_url.txt` | `file:///data/tmp/rd/full/known_indels_url.txt` | Link
curl_known_sites_url | `https://wes-tes-example.tsi.ebi.ac.uk/data/tmp/rd/full/known_sites_url.txt` | `file:///data/tmp/rd/full/known_sites_url.txt` | Link

4. The workflow URL: https://github.com/EMBL-EBI-TSI/RD_pipeline_demo/blob/master/workflow.cwl

