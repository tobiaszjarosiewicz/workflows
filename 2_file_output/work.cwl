cwlVersion: v1.0
class: CommandLineTool
baseCommand: sh
inputs:
  scriptname:
    type: File
    inputBinding:
      position: 1
  savefile:
    type: string
    inputBinding:
      position: 2
      prefix: -f
outputs:
  outputfile:
    type: File
    outputBinding:
      glob: wynik.txt
requirements:
  ResourceRequirement:
    coresMin: 96
    coresMax: 96
    tmpdirMin: 9000
    ramMin: 40000

