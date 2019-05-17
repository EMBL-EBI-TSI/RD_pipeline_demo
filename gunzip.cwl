class: CommandLineTool

cwlVersion: v1.0

baseCommand: [ "gunzip" ]

arguments: [ "-c","-v" ]

requirements:
  - class: InlineJavascriptRequirement
  - class: DockerRequirement
    dockerPull: jlaitinen/lftpalpine
hints:
  - class: ResourceRequirement
    coresMin: 2
    ramMin: 5000
    outdirMin: 7500
    tmpdirMin: 7500

inputs:
  - id: reference_file
    type: File[]
    inputBinding:
      position: 2
outputs:
  - id: unzipped_fasta
    type: stdout
    #outputBinding:
    #  glob: ".fa"
stdout: $(inputs.reference_file[0].nameroot)
