# Rare Diseases workflow for WES-TES

This is an adaptation of [Wetlab2Variations CWL workflow](https://github.com/inab/Wetlab2Variations) to make it compatible with the integrated WES-TES workflow execution environment. Most of the work was done by contributors of [the upstream repository](https://github.com/jarnolaitinen/RD_pipeline).

To run this workflow you will need:
1. the URL of WES-TES execution environment, where the workflow will be executed
1. 5 indirect input files containing the data accessible to your workflow (e.g. present in the Local Site Storage or User Workspace of the WES-TES, where the workflow will be executed)
1. 4 direct input files containing URLs of the above mentioned input files, that also need to be accessible to your workflow (e.g. uploaded to the User Workspace of the execution environment)
1. the URL of the workflow itself
1. Inputs for the workflow described as a JSON file, if you want to interact with the WES API directly, or YAML file, if you want to use WesCli command line utility.



