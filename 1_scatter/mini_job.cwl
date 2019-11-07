#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool
baseCommand: wc
stdout: output.txt
inputs:
  file_list:
    type: File
    inputBinding:
      position: 1
outputs:
  files_changed:
    type: stdout

