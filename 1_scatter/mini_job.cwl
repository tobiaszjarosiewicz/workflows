#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool
baseCommand: wc
stdout: $(inputs.file_name)
inputs:
  file_list:
    type: File
    inputBinding:
      position: 1
  file_name:
    type: string
outputs:
  files_changed:
    type: stdout

