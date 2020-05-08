# workflows
Working examples of CWL workflows.

# Running the workflows

## 1. Scatter

`toil-cwl-runner --batchSystem Slurm --workDir=/mnt/home/tjarosiewicz/tmp/ --jobStore=/mnt/home/tjarosiewicz/workflows/workflows/jstore 1_scatter/scatter.cwl 1_scatter/files.yml`

## 2. Script with output redirection

`toil-cwl-runner --batchSystem Slurm --workDir=/mnt/home/tjarosiewicz/tmp/ --jobStore=/mnt/home/tjarosiewicz/workflows/workflows/jstore 2_file_output/work.cwl 2_file_output/work.yml`

## 3. Array output

`toil-cwl-runner --batchSystem Slurm --workDir=/mnt/home/tjarosiewicz/tmp/ --jobStore=/mnt/home/tjarosiewicz/workflows/workflows/jstore 3_array_out/work.cwl 3_array_out/work.yml`

