#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: Workflow

requirements:
  ScatterFeatureRequirement: {}

inputs:
  files_array: File[] 

steps:
  sub_job:
    run: mini_job.cwl
    scatter: file_list
    in:
      file_list: files_array
    out: [files_changed]

outputs:
  files_changed:
    type:
      type: array
      items: File
    outputSource: sub_job/files_changed

