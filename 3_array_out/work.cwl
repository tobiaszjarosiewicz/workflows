#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool
baseCommand: sh
inputs:
  scriptname:
    type: File
    inputBinding:
      position: 1
  save_file_name:
    type: string
    inputBinding:
      position: 2
      prefix: -f
outputs:
  savefile:
    type:
      type: array
      items: File
    outputBinding:
      glob: "out*"

