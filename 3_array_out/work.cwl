#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool
baseCommand: sh
inputs:
  scriptname:
    type:
      type: array
      items: File
    inputBinding:
      position: 1
  savefile:
    type: File?
    inputBinding:
      position: 2
      prefix: " > "
outputs:
  output:
    type:
      type: array
      items: File

