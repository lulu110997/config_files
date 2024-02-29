#!/bin/bash
mkdir /scratch/lffernan/ && cd /scratch/lffernan/
cp /home/lffernan/tensorflow-2.6.0-gpu-py3.sif /scratch/lffernan/
singularity shell --nv tensorflow-2.6.0-gpu-py3.sif
cp /home/lffernan/.mpose/ /scratch/lffernan/ -r
export HOME=/scratch/lffernan/ && export PATH=$PATH:/scratch/lffernan/.local/bin
echo "############ copy AcT to this dir and cd AcT && pip install -r requirements.txt ############"
nohup sh -c "python -u main.py && cp ./* /home/lffernan/output/ -r" > output.txt 2>&1 &