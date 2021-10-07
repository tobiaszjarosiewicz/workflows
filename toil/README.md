# workflows
Running Toil workflow under Slurm resource manager

## Running the workflows

Assuming that Toil is installed in `$HOME/envs/toil` \

* `python workflow.py -e PATH=$HOME/envs/toil/bin --batchSystem slurm --disableCaching True file:toilRun`
* ` python workflow_opts.py -e PATH=$HOME/envs/toil_clean/bin file:toilRun`
