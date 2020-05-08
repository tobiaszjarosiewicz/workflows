#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: Workflow

requirements:
  ScatterFeatureRequirement: {}

inputs:
  files_array: File[]
  files_names: string[] 

steps:
  sub_job:
    run: mini_job.cwl
    scatter: [file_list, file_name]
    scatterMethod: "dotproduct"
    in:
      file_list: files_array
      file_name: files_names
    out: [files_changed]

outputs:
  files_changed:
    type:
      type: array
      items: File
    outputSource: sub_job/files_changed

