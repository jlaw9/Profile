#!/bin/bash

## QSUB variables
## job name
#$ -N job
## log files. -o is output, -e is error
#$ -o job.log
#$ -e job.log
## use the queue all.q. Options: plugin.q, 
#$ -q all.q
## use the current shell variables
#$ -V
## use /bin/bash for the script
#$ -S /bin/bash
## current working dir
#$ -cwd


