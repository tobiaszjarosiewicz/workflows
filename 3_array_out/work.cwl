#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool
baseCommand: sh
inputs:
  scriptname:
    type: File
    inputBinding:
      position: 1
  savefile:
    type:
      type: array
      items: string
    inputBinding:
      position: 2
      prefix: -f
outputs:
  output:
    type:
      type: array
      items: File

